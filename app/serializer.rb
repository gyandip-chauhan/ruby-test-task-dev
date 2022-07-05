class Serializer
  def self.attributes; @attributes end
  def self.attribute(key, &block)
    @attributes ||= []
    @attributes << key
    define_method(key) { !block.nil? ? instance_eval(&block) : object.public_send(key) }
  end

  attr_reader :object
  def initialize(object)
    @object = object
  end

  def serialize
    self.class.attributes.map{|i| [i, public_send(i)]}.to_h
  end
end
