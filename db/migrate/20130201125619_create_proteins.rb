
class CreateProteins < ActiveRecord::Migration

  def change
    create_table :proteins do |t|
      t.string :name
      t.text :sequence
      t.string :organism
    end
  end
end
