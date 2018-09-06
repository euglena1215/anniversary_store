# == Schema Information
#
# Table name: anniversaries
#
#  id         :bigint(8)        not null, primary key
#  day        :integer
#  month      :integer
#  title      :string(255)
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  couple_id  :bigint(8)
#
# Indexes
#
#  index_anniversaries_on_couple_id  (couple_id)
#
# Foreign Keys
#
#  fk_rails_...  (couple_id => couples.id)
#

class Anniversary < ApplicationRecord
  belongs_to :couple
end
