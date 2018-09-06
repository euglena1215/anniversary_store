# == Schema Information
#
# Table name: alliances
#
#  id         :bigint(8)        not null, primary key
#  logo       :string(255)
#  message    :text(65535)
#  name       :string(255)      not null
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AllianceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
