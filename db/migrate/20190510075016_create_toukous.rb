class CreateToukous < ActiveRecord::Migration[5.2]
  def change
    create_table :toukous do |t|
      t.string :naiyou , null: false , default: ""
      t.integer :riyousha_bangou
      t.timestamps
    end
  end
end
