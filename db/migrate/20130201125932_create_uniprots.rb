class CreateUniprots < ActiveRecord::Migration
  
   
  def change
    create_table :uniprots do |t|
      t.string :uniprot_ac, limit: 11, null: false
      t.integer :protein_id, null: false
      t.foreign_key :proteins
    end
  end
end
