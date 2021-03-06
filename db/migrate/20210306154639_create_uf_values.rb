class CreateUfValues < ActiveRecord::Migration[5.2]
  def change
    create_table :uf_values do |t|
      t.float :value

      t.timestamps
    end
  end
end
