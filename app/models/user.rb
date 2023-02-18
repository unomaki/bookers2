class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :post_images, dependent: :destroy

         validates :title, presence: true
         validates :body, presence: true
         validates :image, presence: true
end
