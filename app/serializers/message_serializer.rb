class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :host_id
  belongs_to :user
  belongs_to :host
end
