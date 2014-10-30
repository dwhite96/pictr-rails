class Picture < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, PictureUploader

  validates :picture, presence: true
  validates :name, presence: true
end
