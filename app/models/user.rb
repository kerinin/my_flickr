class User < ActiveRecord::Base
  include Mongoid::Document
  include Mongoid::Timestamps
  
  has_many :domains
  has_many :page_templates
  has_many :set_templates
  has_many :image_templates
    
  field :name, :class => String
  field :flickr_api_key, :class => String
  field :flickr_api_secret, :class => String
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
