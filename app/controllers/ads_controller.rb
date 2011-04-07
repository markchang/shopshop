class AdsController < ApplicationController
  def index
    @category = Category.find(params[:category_id]) 
    @ads = @category.ads
  end

  def show
    @ad = Ad.find(params[:id])
    @category = @ad.category
  end

  def new
    @category = Category.find(params[:category_id])
    @ad = @category.ads.build
  end

  def create
    @ad = Ad.new(params[:ad])
    @category = @ad.category
    if @ad.save
      redirect_to category_ad_url(@category, @ad), 
              :notice => "Successfully created ad."
    else
      render :action => 'new'
    end
  end

  def edit
    @ad = Ad.find(params[:id])
    @category = @ad.category
  end

  def update
    @ad = Ad.find(params[:id])
    @category = @ad.category
    if @ad.update_attributes(params[:ad])
      redirect_to category_ad_url(@category, @ad), 
                :notice  => "Successfully updated ad."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ad = Ad.find(params[:id])
    @category = @ad.category
    @ad.destroy
    redirect_to category_ads_url, :notice => "Successfully destroyed ad."
  end
end
