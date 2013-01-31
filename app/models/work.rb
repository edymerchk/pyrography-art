class Work < ActiveRecord::Base
  attr_accessible :date, :description, :name, :image, :remote_image_url, :size, :price

  validates_presence_of :name, :image
  mount_uploader :image, ImageUploader


  	def next
		 Work.where("id > ?",self.id).first
	end
	def prev
		 Work.where("id < ?",self.id).last
	end

	scope :recent, Work.order("created_at DESC").limit(3)
	scope :random, Work.order("RANDOM()").limit(4) # for Msyql use RAND


end
