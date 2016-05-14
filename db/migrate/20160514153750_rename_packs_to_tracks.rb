class RenamePacksToTracks < ActiveRecord::Migration
  def change
  	rename_table :packs, :tracks
  	rename_column :activities, :pack_id, :track_id
  end
end
