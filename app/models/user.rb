# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  username        :string(255)      not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin           :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  has_secure_password
  
  # Relationships
  has_many :api

  # Validations
  # valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email,             presence: false, on: :create, uniqueness: { case_sensitive: false }, format: { with: valid_email_regex }
  validates :username,          presence: true,  on: :create, uniqueness: { case_sensitive: false }
  validates :password_digest,   presence: true,  on: :create
end
