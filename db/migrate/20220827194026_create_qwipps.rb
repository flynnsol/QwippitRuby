class CreateQwipps < ActiveRecord::Migration[7.0]
  def change
    create_table :qwipps do |t|
      t.text :qwipp

      t.timestamps
    end
  end
end
