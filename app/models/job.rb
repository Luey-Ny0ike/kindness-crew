class Job < ApplicationRecord
  belongs_to :employer
  mount_uploaders :pictures, PictureUploader
end
