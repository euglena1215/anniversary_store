class Impression < ApplicationRecord
  belongs_to :from, class_name: User.name, foreign_key: :from_id
  belongs_to :to, class_name: User.name, foreign_key: :to_id
end
