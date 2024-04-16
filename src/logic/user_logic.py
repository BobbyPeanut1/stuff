from utils.dal import *
from models.user_model import *

class User_Logic:
    def __init__(self):
        self.dal = DAL()

    def get_all_users(self):
        sql = "select * from first_project_db.users"
        result = self.dal.get_table(sql)
        results = UserModel.dictionaries_to_users(result)
        return results
    

test = User_Logic()
test_test = test.get_all_users()
print(test_test)