class CreateTelBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :tel_books do |t|
      t.string :first_name
      t.string :last_name
      t.string :cell

      t.timestamps
    end
  end
end
