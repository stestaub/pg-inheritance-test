class CreateCapitals < ActiveRecord::Migration[5.1]
  def up
    execute 'CREATE TABLE capitals (state char(2)) INHERITS (cities);'
  end

  def down
    execute 'DROP TABLE capitals;'
  end
end
