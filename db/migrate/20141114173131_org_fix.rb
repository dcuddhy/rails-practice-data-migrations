class OrgFix < ActiveRecord::Migration
  def change

    Organization.where(name: nil).delete_all
    Organization.where(name: " ").delete_all
    Organization.where(name: "").delete_all
    Organization.where(active: nil).update_all(active: false)

  end
end
