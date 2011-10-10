class User < ActiveRecord::Base
  include Mongoid::Document
  
  has_many :domains
  has_many :page_templates
  has_many :set_templates
  has_many :image_templates
  
  devise :registerable, :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  
  field :name, String
  field :flickr_api_key, String
  field :flickr_api_secret, String
end
