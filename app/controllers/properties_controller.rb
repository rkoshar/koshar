class PropertiesController < ApplicationController
  before_filter :logged_in_user, only: [:import_prop, :upload_images]

  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def import
    Property.import(params[:file])
    redirect_to properties_path, notice: "Properties imported."
  end

  def destroy
    Property.destroy(params[:id])
  end

end