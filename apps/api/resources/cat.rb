class SerializableCat < JSONAPI::Serializable::Resource
  type 'cats'

  attributes :name
end