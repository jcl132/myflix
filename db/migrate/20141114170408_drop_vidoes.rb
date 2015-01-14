class DropVidoes < ActiveRecord::Migration
  def change
    drop_table :vidoes
  end
end
