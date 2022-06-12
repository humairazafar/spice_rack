class CreateSpices < ActiveRecord::Migration[6.1]
  def change
    create_table :spices do |t|
      t.string :name
      t.string :details
      t.string :img_url

      t.timestamps
    end
  end
end
