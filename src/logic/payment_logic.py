from utils.dal import *
from models.payment_model import *

class Payment_Logic:
    def __init__(self):
        self.dal = DAL()

    def get_all_payments(self):
        sql = "select * from classicmodels.payments limit 5"
        result = self.dal.get_table(sql)
        results = PaymentModel.dictionaries_to_payments(result)
        return results
    
    def get_one_payment(self):
        sql = "select * from classicmodels.payments limit 1"
        result = self.dal.get_table(sql)
        results = PaymentModel.dictionaries_to_payments(result)
        return results