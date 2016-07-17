class User < ApplicationRecord
    has_many :tweets, dependent: :destroy

    validates :name, length: { minimum: 1, maximum: 20 }
    validates :email, length: { minimum: 5, maximum: 40 }
    validates :handle, length: { minimum: 1, maximum: 12 }

end
