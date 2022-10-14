class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, UploadFileUploader
end
