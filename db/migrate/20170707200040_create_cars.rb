class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :modelo
      t.integer :ano
      t.string :marca
      t.string :classe
      t.float :preco

      t.timestamps
    end
  end
end
