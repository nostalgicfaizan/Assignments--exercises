class CreateMicropossts < ActiveRecord::Migration
  def change
    create_table :micropossts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
