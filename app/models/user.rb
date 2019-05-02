class User < ApplicationRecord
  has_many :trumpets
  has_many :reactions
end
