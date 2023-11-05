class CreateMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.string :fighter_or_fight
      t.integer :quantity
      t.text :description
      t.references :weapon, null: false, foreign_key: true
      t.string :image_url
      t.string :video_url

      t.timestamps
    end
  end
end
