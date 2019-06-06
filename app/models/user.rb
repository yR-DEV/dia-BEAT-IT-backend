class User < ApplicationRecord
    has_secure_password
    has_many :blood_sugar_records
end
