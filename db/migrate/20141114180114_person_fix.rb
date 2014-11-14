class PersonFix < ActiveRecord::Migration
  def change
    Person.where('date_of_birth < ?', Date.today - 100.years).delete_all

  end
end
