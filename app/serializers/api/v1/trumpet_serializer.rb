class Api::V1::TrumpetSerializer < ActiveModel::Serializer
  attributes :id, :trumpet_type, :content

  belongs_to :user
  belongs_to :website
  has_many :reactions
end
