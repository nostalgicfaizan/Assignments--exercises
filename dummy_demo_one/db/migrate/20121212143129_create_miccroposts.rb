class CreateMiccroposts < ActiveRecord::Migration
  def change
    create_table :miccroposts do |t|
      t.string :content
      t.integer :userid

      t.timestamps
    end
  end
end
