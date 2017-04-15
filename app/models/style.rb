class Style < ApplicationRecord
  belongs_to :type
  belongs_to :user
  has_many :comments
end
