class CreateBillboardmodels < ActiveRecord::Migration[5.2]
  def change
    create_table :billboardmodels do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
