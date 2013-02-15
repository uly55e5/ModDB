class Uniprot < ActiveRecord::Base
  belongs_to :protein
  attr_accessible :protein_id, :uniprot_ac
end
