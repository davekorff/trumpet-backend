class Api::V1::TrumpetSerializer < ActiveModel::Serializer
  attributes :id, :trumpet_type, :content, :cheers, :jeers

  belongs_to :user
  belongs_to :website
  has_many :reactions

  def cheers
    count = 0
    self.object.reactions.each {|reaction| count += 1 if reaction.cheer }
    count
  end

  def jeers
    count = 0
    self.object.reactions.each {|reaction| count += 1 if reaction.jeer }
    count
  end
end
