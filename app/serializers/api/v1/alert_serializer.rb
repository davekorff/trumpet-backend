class Api::V1::AlertSerializer < ActiveModel::Serializer
  attributes :id, :trumpet_type, :content, :user

  # def user
  #   self.object.users.map do |user|
  #     {username: user.username,
  #     first_name: user.first_name,
  #     last_name: user.last_name}
  #   end
  # end

  belongs_to :user
  belongs_to :website
end
