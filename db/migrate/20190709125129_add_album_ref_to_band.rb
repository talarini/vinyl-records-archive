class AddAlbumRefToBand < ActiveRecord::Migration[5.2]
  def change
    add_reference :bands, :album, foreign_key: true
  end
end
