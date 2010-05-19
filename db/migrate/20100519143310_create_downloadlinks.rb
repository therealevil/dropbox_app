class CreateDownloadlinks < ActiveRecord::Migration
  def self.up
    create_table :downloadlinks do |t|
      t.string :description
      t.string :downloadlink
      t.boolean :isvalid

      t.timestamps
    end
  end

  def self.down
    drop_table :downloadlinks
  end
end
