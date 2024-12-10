class CreateSends < ActiveRecord::Migration[7.2]
  def change
    create_table :sends do |t|
      t.string :username
      t.string :body

      t.timestamps
    end
  end
end