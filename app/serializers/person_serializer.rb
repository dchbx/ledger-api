class PersonSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :is_active
  has_one :user
end
