class ReactionSerializer < ActiveModel::Serializer
  attributes :id, :trumpet_id, :username, :reaction_type

  belongs_to :user
  belongs_to :trumpet

  def username
    self.object.user.username
  end
end
