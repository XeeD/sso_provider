class AddStateToSSOProviderAccessGrants < ActiveRecord::Migration
  def change
    add_column :sso_provider_access_grants, :state, :string
  end
end
