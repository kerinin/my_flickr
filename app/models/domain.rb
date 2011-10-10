class Domain < ActiveRecord::Base
  include Mongoid::Document
  include Mongoid::Timestamps
  
  has_many :pages
  has_many :photo_sets
end
