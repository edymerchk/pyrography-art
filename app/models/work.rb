class Work < ActiveRecord::Base
  attr_accessible :date, :description, :name, :image, :remote_image_url

  validates_presence_of :name, :image
  mount_uploader :image, ImageUploader


end
