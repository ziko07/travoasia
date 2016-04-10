class Admin::SiteCommunitiesController < ApplicationController

  def index
    @site_communities = Admin::SiteCommunity.all
  end

  def new
    @site_community = Admin::SiteCommunity.new
  end

  def create
    site_community = Admin::SiteCommunity.new(site_community_params)
    if site_community.save
      flash[:notice] = 'Site Community is Added Successfully'
      redirect_to admin_site_communities_path
    else
      flash[:error] = 'Something is worng Please try latter'
      render action: 'index'
    end
  end

  def edit
    @site_community = Admin::SiteCommunity.find_by_slug(params[:id])
  end

  def update
    @site_community = Admin::SiteCommunity.find_by_slug(params[:id])
    if @site_community.update_attributes(site_community_params)
      flash[:notice] = 'Site Community is  Successfully Updated'
      redirect_to admin_site_communities_path
    else
      flash[:error] = 'Something is worng Please try latter'
      render action: :edit
    end
  end

  def destroy
    @site_community = Admin::SiteCommunity.find_by_slug(params[:id])
    if @site_community.destroy
      flash[:notice] = 'Site Community is  Successfully Deleted'
      redirect_to admin_site_communities_path
    else
      flash[:error] = 'Something is worng Please try latter'
      redirect_to admin_site_communities_path
    end
  end

  def profile
    @site_community = Admin::SiteCommunity.find_by_slug(params[:id])
    prepare_meta_tags(title: "Travoasia Community Profile: #{@site_community.name}",
                      description: 'KMusic Start Up See How Travosia Helps Bring These Boys Togather And Start A music Carrier',
                      image: @site_community.image.url,
                      twitter: {card: @site_community.image.url})
    render layout: 'landing'
  end

  def send_contact_email
    site_community =  Admin::SiteCommunity.find_by_slug(params[:id])
    MailCarrier.deliver_now(PersonMailer.new_community_profile_contact_email(site_community.email,params[:name],params[:email], params[:description],@current_community))
    redirect_to community_profile_path(site_community)
  end


  private

  def site_community_params
    params.require(:admin_site_community).permit(:name,:email, :designation, :address, :image, :about, :facebook_url, :twitter_url)
  end
end
