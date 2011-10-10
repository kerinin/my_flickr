class Domain < ActiveRecord::Base
  include Mongoid::Document
  
  has_many :pages
  has_many :photo_sets
end
