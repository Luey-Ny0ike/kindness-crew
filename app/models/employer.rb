class Employer < ApplicationRecord
  has_many :jobs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
         mount_uploader :background, BackgroundUploader
   geocoded_by :address
   after_validation :geocode, :if => :address_changed?
   # Activaion for the geocoder gem
end
