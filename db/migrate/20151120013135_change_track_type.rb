class ChangeTrackType < ActiveRecord::Migration
  def change
    change_table :tracks do |t|
      t.rename :type, :kind
    end
  end
end
