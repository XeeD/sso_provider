# This migration comes from sso_provider (originally 20120711180145)
class AddStateToSSOProviderAccessGrants < ActiveRecord::Migration
  def change
    add_column :sso_provider_access_grants, :state, :string
  end
end
