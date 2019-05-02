class Trumpet < ApplicationRecord
  belongs_to :user
  belongs_to :website
  has_many :reactions
end
