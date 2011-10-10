class Page
  include Mongoid::Document
  
  belongs_to :page_template
  belongs_to :domain
  embeds_many :fields
  
  field :title, String
  field :slug, String
  field :creator_id, Integer
  
  timestamps!
end
