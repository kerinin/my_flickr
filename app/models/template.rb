class Template 
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :class => String
  field :liquid, :class => String
end
