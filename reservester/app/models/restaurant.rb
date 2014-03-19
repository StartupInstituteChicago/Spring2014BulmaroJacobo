class Restaurant < ActiveRecord::Base

   validates :name, presence: true,
					 length: { minimum: 3}

   belongs_to :restaurant
   mount_uploader :photo, PhotoUploader
   
end
