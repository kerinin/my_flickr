class Field
  include Mongoid::Document
  
  field :name, String
  field :value, String
end
