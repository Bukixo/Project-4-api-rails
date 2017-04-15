class User < ApplicationRecord
  has_many :styles_created, class_name: "Style", foreign_key: "user_id"
  has_many :comments

end
