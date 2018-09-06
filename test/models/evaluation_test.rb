# == Schema Information
#
# Table name: evaluations
#
#  id         :bigint(8)        not null, primary key
#  rate       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint(8)
#  user_id    :bigint(8)
#
# Indexes
#
#  index_evaluations_on_event_id  (event_id)
#  index_evaluations_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class EvaluationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
