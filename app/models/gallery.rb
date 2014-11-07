class Gallery < ActiveRecord::Base
  belongs_to :user
  has_many :pictures

  validates :name, presence: true
end
