# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  content    :text(65535)
#  status     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint(8)        not null
#  writer_id  :bigint(8)        not null
#
# Indexes
#
#  index_comments_on_event_id   (event_id)
#  index_comments_on_writer_id  (writer_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#  fk_rails_...  (writer_id => users.id)
#

class Comment < ApplicationRecord
  belongs_to :event
end
