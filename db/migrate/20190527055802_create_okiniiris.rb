class CreateOkiniiris < ActiveRecord::Migration[5.2]
  def change
    create_table :okiniiris do |t|
      t.integer :riyousha_bangou
      t.integer :toukou_bangou
      t.timestamps
    end
  end
end
