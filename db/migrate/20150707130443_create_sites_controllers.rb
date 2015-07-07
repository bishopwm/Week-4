class CreateSitesControllers < ActiveRecord::Migration
  def change
    create_table :sites_controllers do |t|

      t.timestamps null: false
    end
  end
end
