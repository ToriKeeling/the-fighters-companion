class CreateMoveRequirements < ActiveRecord::Migration[7.0]
  def change
    create_table :move_requirements do |t|
      t.references :move, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
