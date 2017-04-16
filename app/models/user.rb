class User < ApplicationRecord
  has_secure_password

  has_many :styles_created, class_name: "Style", foreign_key: "user_id"
  has_and_belongs_to_many :liked_styles, class_name: "Style", join_table: "styles_users"
  has_many :comments

  validates :name, presence: true, uniqueness: true
  validates :email, uniqueness: true, presence: true

end
