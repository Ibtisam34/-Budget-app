class CreateAffairs < ActiveRecord::Migration[7.0]
  def change
    create_table :affairs do |t|
      t.string :name
      t.decimal :amount
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
