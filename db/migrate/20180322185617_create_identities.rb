class CreateIdentities < ActiveRecord::Migration[5.1]
  def change
    create_table :identities do |t|
      t.references :user, foreign_key: true
      t.string :provider
      t.string :uid
      t.string :token
      t.string :secret
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
