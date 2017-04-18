class User < ApplicationRecord
  has_secure_password validations: false
  has_many :styles_created, class_name: "Style", foreign_key: "user_id"
  has_and_belongs_to_many :liked_styles, class_name: "Style", join_table: "styles_users"
  has_many :comments

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, unless: :oauth_login?
  validates :password, presence: true, confirmation: true, unless: :oauth_login?, on: :create

  def oauth_login?
    github_id.present?
end

end
