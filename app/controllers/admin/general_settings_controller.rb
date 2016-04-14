class Admin::GeneralSettingsController < ApplicationController

  def index
    if Admin::GeneralSetting.all.count > 0
      @general_settings = Admin::GeneralSetting.first
    else
      @general_settings = Admin::GeneralSetting.create
    end
  end

  def update
    @general_settings = Admin::GeneralSetting.first
    if @general_settings.update_attributes(general_settings_params)
      flash[:notice] = 'General Settings  Successfully Updated'
      redirect_to admin_general_settings_path
    else
      flash[:error] = 'Something is worng Please try latter'
      render action: :index
    end
  end

  private

  def general_settings_params
    params.require(:admin_general_setting).permit!
  end
end
