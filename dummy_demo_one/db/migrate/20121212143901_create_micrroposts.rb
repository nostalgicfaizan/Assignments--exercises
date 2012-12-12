class CreateMicrroposts < ActiveRecord::Migration
  def change
    create_table :micrroposts do |t|
      t.string :content
      t.integer :userid

      t.timestamps
    end
  end
end
