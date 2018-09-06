# == Schema Information
#
# Table name: impressions
#
#  id         :bigint(8)        not null, primary key
#  content    :text(65535)
#  status     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  from_id    :bigint(8)        not null
#  to_id      :bigint(8)        not null
#
# Indexes
#
#  index_impressions_on_from_id  (from_id)
#  index_impressions_on_to_id    (to_id)
#
# Foreign Keys
#
#  fk_rails_...  (from_id => users.id)
#  fk_rails_...  (to_id => users.id)
#

require 'test_helper'

class ImpressionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
