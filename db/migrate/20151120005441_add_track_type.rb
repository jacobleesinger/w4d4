class AddTrackType < ActiveRecord::Migration
  def change
    change_table :tracks do |t|
      t.string :type, limit: 1
    end
  end
end
