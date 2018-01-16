class AddPrimaryKeyConstraintToCapital < ActiveRecord::Migration[5.1]
  def up
    execute 'ALTER TABLE capitals ADD CONSTRAINT capitals_pkey PRIMARY KEY(id);'
  end

  def down
    execute 'ALTER TABLE capitals DROP CONSTRAINT capitals_pkey;'
  end
end
