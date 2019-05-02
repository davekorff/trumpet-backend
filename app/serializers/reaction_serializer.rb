class ReactionSerializer < ActiveModel::Serializer
  attributes :username, :cheer, :jeer

  def username
    self.object.user.username
  end
end
