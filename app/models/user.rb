class User < ApplicationRecord
  has_secure_password
  has_many :todos
  
  mount_uploader :avatar, AvatarUploader
end
