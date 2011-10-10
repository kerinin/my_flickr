class Image
  include Mongoid::Document
  
  field :title, String
  field :slug, String
  field :creator_id, Integer
  
  timestamps!
end
