class Protein < ActiveRecord::Base
  attr_accessible :name, :organism, :sequence
  has_many :uniprots, dependent: :destroy 
end
