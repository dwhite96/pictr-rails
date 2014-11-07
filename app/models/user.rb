class User < ActiveRecord::Base
  has_many :galleries
  has_many :pictures, through: :galleries, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true
end
