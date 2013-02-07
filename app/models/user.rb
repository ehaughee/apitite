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
#

class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  has_secure_password
  validates_presence_of :username, on: :create
  validates_presence_of :password, on: :create
end
