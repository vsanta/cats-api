Hanami::Model.migration do
  change do
    alter_table :cats do
      add_foreign_key :breed_id, :breeds, on_delete: :cascade, null: true
    end
  end
end
