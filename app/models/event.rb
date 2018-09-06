class Event < ApplicationRecord
  belongs_to :couple
  has_many :comments, dependent: :destroy
end
