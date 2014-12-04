class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :hometown
      t.string :bio
      t.string :label

      t.timestamps
    end
  end
end
