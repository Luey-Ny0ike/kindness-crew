class Job < ApplicationRecord
  belongs_to :employer
  # Established relation with the employer
  mount_uploaders :pictures, PictureUploader
  # Mounted the picture uploaders
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  # Activaion for the geocoder gem
end
