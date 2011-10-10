class Template 
  include Mongoid::Document

  field :name, String
  field :liquid, String
  
  timestamps!
end
