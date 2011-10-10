class Field
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, :class => String
  field :value, :class => String
end
