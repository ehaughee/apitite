# == Schema Information
#
# Table name: apis
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  path       :string(255)
#  docs       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class ApiTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
