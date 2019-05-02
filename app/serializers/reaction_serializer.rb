class ReactionSerializer < ActiveModel::Serializer
  attributes :username, :reaction_type

  def username
    self.object.user.username
  end
end
