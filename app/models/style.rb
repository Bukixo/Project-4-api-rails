class Style < ApplicationRecord
  belongs_to :type
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :likes, class_name: "User", join_table: "styles_users"
  #
  # validates :user_id, presence: true
  # #validates :method, length: { minimum: 0, maximum: 142 }, allow_blank: false
  # validates :durability, numericality: { only_integer: true }

end
