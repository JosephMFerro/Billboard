class AddImageToBillboardmodels < ActiveRecord::Migration[5.2]
  def change
    add_column :billboardmodels, :image, :string
  end
end
