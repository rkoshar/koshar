class UploadController < ApplicationController
  def index
    render :file => 'app\assets\images\uploadimages.rhtml'
  end
  def uploadImages
    post = DataFile.save(params[:upload])
    render :test => "Images have been uploaded successfully"
  end
end
