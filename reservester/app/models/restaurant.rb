class Restaurant < ActiveRecord::Base
   validates :name, :description, :address, :phone, presence:true
   validates :name, :address, length: { minimum: 3}
   validates :phone, length: { minimum: 8}

   belongs_to :owner
   has_many :reservations
   mount_uploader :photo, PhotoUploader

end
