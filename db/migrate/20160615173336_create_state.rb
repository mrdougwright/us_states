class CreateState < ActiveRecord::Migration
  def up
    create_table :states do |t|
      t.string :name
      t.boolean :visited
      t.boolean :license_plate_seen
    end
  end

  def down
    drop_table :states
  end
end
