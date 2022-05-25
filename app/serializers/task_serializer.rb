class TaskSerializer < ActiveModel::Serializer
  attributes :id, :description, :status
  has_one :list
end
