class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :password

  has_many :trumpets
  has_many :reactions

  # def trumpets
  #   self.object.trumpets do |trumpet|
  #     {id: trumpet.id}
  #   end
  # end
end
