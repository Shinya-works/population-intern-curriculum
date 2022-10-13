class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, UploadFileUploader
end
