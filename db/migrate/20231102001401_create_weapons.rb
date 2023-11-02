class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
