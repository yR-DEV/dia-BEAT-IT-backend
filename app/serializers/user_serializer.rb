class UserSerializer < ActiveModel::Serializer
  has_many :blood_sugar_records
  attributes :id, :username, :email, :password
end
