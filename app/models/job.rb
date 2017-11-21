class Job < ApplicationRecord
  mount_uploaders :pictures, PictureUploader
end
