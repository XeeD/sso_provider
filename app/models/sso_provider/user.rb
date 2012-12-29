module SSOProvider
  class User < ActiveRecord::Base
    has_many :authentications, :dependent => :delete_all
    has_many :access_grants, :dependent => :delete_all

    before_validation :initialize_fields, :on => :create

    devise :database_authenticatable,
           :registerable,
           :token_authenticatable,
           :recoverable,
           :timeoutable,
           :trackable,
           :validatable,
           :rememberable

    self.token_authentication_key = "oauth_token"

    attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name

    def apply_omniauth(omniauth)
      authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
    end

    def self.find_for_token_authentication(conditions)
      joins(:access_grants).
          where("#{AccessGrant.table_name}.access_token = ?", conditions[token_authentication_key]).
          where("#{AccessGrant.table_name}.access_token_expires_at IS NULL OR #{AccessGrant.table_name}.access_token_expires_at > ?", Time.now).
          select("#{self.table_name}.*").
          first
    end

    def initialize_fields
      self.status = "Active"
      self.expiration_date = 1.year.from_now
    end
  end
end
