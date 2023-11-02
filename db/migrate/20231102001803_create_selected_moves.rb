class CreateSelectedMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :selected_moves do |t|
      t.references :user, null: false, foreign_key: true
      t.references :move, null: false, foreign_key: true

      t.timestamps
    end
  end
end
