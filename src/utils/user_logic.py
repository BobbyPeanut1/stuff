from dal import *
from user_model import *

class User_Logic:
    def __init__(self):
        self.dal = DAL()

    def get_all_users(self):
        sql = "select * from first_project_db.users"
        result = self.dal.get_table(sql)
        results = UserModel.dictionaries_to_users(result)
        return results

    def insert_user_to_table(self, firstName, lastName, email, password):
        roleId = 2 # insures that new user is inputted as a user role
        sql = "insert into first_project_db.users(firstName, lastName, email, password, roleId) values(%s, %s, %s, %s, %s)"
        parameters = (firstName, lastName, email, password, roleId)
        added_user = self.dal.insert(sql, params=parameters)
        return added_user

    # check if this is an action that needs sql injection protection
    # is there a connection between the crud functions and the insertion of parameters
    def return_user_by_email_and_password(self, check_email, check_password):
        sql = f"select * from first_project_db.users where email = '{check_email}' and password = '{check_password}'"
        user_tuple = self.dal.get_scalar(sql)
        if user_tuple is None:
            return "User is not in the database"
        returned_user = UserModel(user_tuple[0], user_tuple[1], user_tuple[2], user_tuple[3], user_tuple[4], user_tuple[5])
        return returned_user
    
    def check_if_email_in_database(self, check_email):
        sql = f"select email from first_project_db.users where email like '%{check_email}%'"
        email = self.dal.get_scalar(sql)
        if email is None:
            return False
        return True


    # think about a way to print the list of models in a function
    # def print_all_users(self):
    #     user_model_list = User_Logic.get_all_users(self)
    #     print_users = []
    #     for user in user_model_list:
    #         print_users.append(user.display())

    #     print(print_users) 

logic_tests = User_Logic()
logic_tests.insert_user_to_table("Bill", "Baxter", "Shamosajdbai@aol.com", "asddsa2634")

user = logic_tests.return_user_by_email_and_password("jonathan.zamanski@gmail.com", 12345)
print(user)

user = logic_tests.check_if_email_in_database("jonathan.zamanski@gmail.com")
print(user)