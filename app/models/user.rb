class User < ApplicationRecord
devise  :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        validates :email, presence: true
        validates :encrypted_password, presence: true
        validates :name, presence: true
        validates :profile, presence: true
        validates :position, presence: true
        validates :occupation, presence: true

        has_many :prototypes
        has_many :comments
end
