class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :uid
      t.string :provider
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
