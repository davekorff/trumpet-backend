class ReactionSerializer < ActiveModel::Serializer
  attributes :trumpet_id, :reaction_type

  belongs_to :user
  belongs_to :trumpet

  def username
    self.object.user.username
  end
end
