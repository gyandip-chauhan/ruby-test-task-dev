require_relative "serializer"

class CommentSerializer < Serializer
  attribute :id
  attribute :body
end
