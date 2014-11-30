class Image < ActiveRecord::Base
  mount_uploader :image, ImgUploader
end
