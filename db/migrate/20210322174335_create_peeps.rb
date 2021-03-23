class CreatePeeps < ActiveRecord::Migration[5.2]
  def change
    create_table :peeps do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :twitter
      t.string :instagram
      t.string :facebook
      t.string :snapchat
      t.string :soundcloud
      t.string :tiktok

      t.timestamps
    end
  end
end
