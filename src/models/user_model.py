class UserModel:
    def __init__(self, userId, firstName, lastName, email, password, roleId):
        self.userId = userId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.roleId = roleId
    
    def display(self):
        print(f"User ID: {self.userId}, First Name: {self.firstName}, Last Name: {self.lastName}, Email: {self.email}, Password: {self.password}, Role ID: {self.roleId}")

    @staticmethod
    def dictionary_to_user(dictionary):
       userId = dictionary["userId"]
       firstName = dictionary["firstName"]
       lastName = dictionary["lastName"]
       email = dictionary["email"]
       password = dictionary["password"]
       roleId = dictionary["roleId"]
       user = UserModel(userId, firstName, lastName, email, password, roleId)
       return user


    @staticmethod
    def dictionaries_to_users(list_of_dictionaries):
        users = []
        for item in list_of_dictionaries:
            user = UserModel.dictionary_to_user(item)
            users.append(user)
        return users