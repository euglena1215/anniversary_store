# == Schema Information
#
# Table name: couples
#
#  id         :bigint(8)        not null, primary key
#  ended_at   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user1_id   :bigint(8)        not null
#  user2_id   :bigint(8)        not null
#
# Indexes
#
#  index_couples_on_user1_id  (user1_id)
#  index_couples_on_user2_id  (user2_id)
#
# Foreign Keys
#
#  fk_rails_...  (user1_id => users.id)
#  fk_rails_...  (user2_id => users.id)
#

class Couple < ApplicationRecord
  belongs_to :user1, class_name: User.name, foreign_key: :user1_id
  belongs_to :user2, class_name: User.name, foreign_key: :user2_id
end
