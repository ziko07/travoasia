class Admin::SiteCommunitiesController < ApplicationController

  def index
    @site_communities = Admin::SiteCommunity.all
  end

  def new
    @site_community = Admin::SiteCommunity.new
  end

  def create
  site_community =  Admin::SiteCommunity.new(site_community_params)
    if site_community.save
      flash[:notice] = 'Site Community is Added Successfully'
     redirect_to admin_site_communities_path
    else
      flash[:error] = 'Something is worng Please try latter'
      render action: 'index'
    end
  end

  def edit
    @site_community = Admin::SiteCommunity.find_by_id(params[:id])
  end

  def update
    @site_community = Admin::SiteCommunity.find_by_id(params[:id])
    if @site_community.update_attributes(site_community_params)
      flash[:notice] = 'Site Community is  Successfully Updated'
      redirect_to admin_site_communities_path
    else
      flash[:error] = 'Something is worng Please try latter'
      render action: :edit
    end
  end

  def destroy
    @site_community = Admin::SiteCommunity.find_by_id(params[:id])
    if @site_community.destroy
      flash[:notice] = 'Site Community is  Successfully Deleted'
      redirect_to admin_site_communities_path
    else
      flash[:error] = 'Something is worng Please try latter'
      redirect_to admin_site_communities_path
    end
  end


  private

  def site_community_params
    params.require(:admin_site_community).permit(:name, :designation, :address, :image, :about)
  end
end