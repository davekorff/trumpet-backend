class Api::V1::TrumpetSerializer < ActiveModel::Serializer
  attributes :id, :summary, :trumpet_type, :content, :cheers, :jeers, :img_url, :created_at

  belongs_to :user
  belongs_to :website
  has_many :reactions

  def cheers
    count = 0
    self.object.reactions.each {|reaction| count += 1 if reaction.reaction_type == "cheer" }
    count
  end

  def jeers
    count = 0
    self.object.reactions.each {|reaction| count += 1 if reaction.reaction_type == "jeer" }
    count
  end
end
