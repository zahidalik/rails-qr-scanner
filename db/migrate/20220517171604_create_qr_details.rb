class CreateQrDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :qr_details do |t|
      t.string :name
      t.string :detail

      t.timestamps
    end
  end
end
