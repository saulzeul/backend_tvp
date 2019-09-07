class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :status
  has_one :area
  has_one :role
end
