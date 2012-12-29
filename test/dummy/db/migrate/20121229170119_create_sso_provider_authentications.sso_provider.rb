# This migration comes from sso_provider (originally 20110202133040)
class CreateSSOProviderAuthentications < ActiveRecord::Migration
  def change
    create_table :sso_provider_authentications do |t|
      t.integer :user_id
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end

  def self.down
    drop_table :sso_provider_authentications
  end
end
