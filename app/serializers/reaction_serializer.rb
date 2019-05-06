class ReactionSerializer < ActiveModel::Serializer
  attributes :id, :trumpet_id, :username, :reaction_type, :user_id

  belongs_to :user
  belongs_to :trumpet

  def username
    self.object.user.username
  end

  def user_id
    self.object.user.id
  end
end
