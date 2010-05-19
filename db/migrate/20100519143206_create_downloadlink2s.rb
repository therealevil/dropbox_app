class CreateDownloadlink2s < ActiveRecord::Migration
  def self.up
    create_table :downloadlink2s do |t|
      t.string :description
      t.string :downloadlink
      t.boolean :isvalid

      t.timestamps
    end
  end

  def self.down
    drop_table :downloadlink2s
  end
end
