require_relative "serializer"

class PostSerializer < Serializer
  attribute :id
  attribute :title
  attribute :date do
    object.date.strftime("%d-%m-%Y")
  end
end
