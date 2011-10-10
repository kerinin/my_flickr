class Image
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, :class => String
  field :slug, :class => String
  field :creator_id, :class => Integer
end
