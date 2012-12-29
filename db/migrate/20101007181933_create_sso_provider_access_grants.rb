class CreateSSOProviderAccessGrants < ActiveRecord::Migration
  def change
    create_table :sso_provider_access_grants do |t|
      t.string :code
      t.string :access_token
      t.string :refresh_token
      t.datetime :access_token_expires_at
      t.integer :user_id
      t.integer :client_id

      t.timestamps
    end
  end
end
