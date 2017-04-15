class Style < ApplicationRecord
  belongs_to :type
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :likes, class_name: "User", join_table: "styles_users"
end
