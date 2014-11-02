class Picture < ActiveRecord::Base
  belongs_to :gallery
  mount_uploader :picture, PictureUploader

  validates :picture, presence: true
end
