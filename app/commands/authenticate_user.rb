class AuthenticateUser 
    prepend SimpleCommand 

    def initialize(email, password)
        @email = email 
        @password = password
    end

    def call 
        JsonWebToken.encode(user_id: user.id) if user
    end

    private 

    attr_accessor :email, :password

    def user
        user = User.find_by_email(@email)
        return user if user && user.authenticate(@password)

        errors.add :user_authentication, 'invalid credentials'
        nil
    end
end

# curl -d "param1=value1&param2=value2" -X POST http://localhost:3000/api/v1/

# curl -d '{"email":"heh_yr@protonmail.com", "password":"123swim1223", "username":"heh_yr"}' -H "Content-Type: application/json" -X POST http://localhost:3000/api/v1/users
