class CreateSSOProviderClients < ActiveRecord::Migration
  def change
    create_table :sso_provider_clients do |t|
      t.string :name
      t.string :app_id
      t.string :app_secret

      t.timestamps
    end
  end
end
