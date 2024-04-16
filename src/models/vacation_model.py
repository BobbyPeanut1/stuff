class VacationModel:
    def __init__(self, vacationId, countryId, vacationDescription, vacationStartDate, vacationEndDate, vacationPrice, photoFileName):
        self.vacationId = vacationId
        self.countryId = countryId
        self.vacationDescription = vacationDescription
        self.vacationStartDate = vacationStartDate
        self.vacationEndDate = vacationEndDate
        self.vacationPrice = vacationPrice
        self.photoFileName = photoFileName
    
    def display(self):
        print(f"Vacation ID: {self.vacationId}, Country ID: {self.countryId}, Vacation Description: {self.vacationDescription}, Vacation Start Date: {self.vacationStartDate}, Vacation End Date: {self.vacationEndDate}, Vacation Price: {self.vacationPrice}, Photo File Name: {self.photoFileName}")

    @staticmethod
    def dictionary_to_vacation(dictionary):
        vacationId = dictionary["vacationId"]
        countryId = dictionary["countryId"]
        vacationDescription = dictionary["vacationDescription"]
        vacationStartDate = dictionary["vacationStartDate"]
        vacationEndDate = dictionary["vacationEndDate"]
        vacationPrice = dictionary["vacationPrice"]
        photoFileName = dictionary["photoFileName"]
        vacation = VacationModel(vacationId, countryId, vacationDescription, vacationStartDate, vacationEndDate, vacationPrice, photoFileName)
        return vacation
    
    @staticmethod
    def dictionaries_to_vacations(list_of_dictionaries):
        vacations = []
        for item in list_of_dictionaries:
            vacation = VacationModel.dictionary_to_vacation(item)
            vacations.append(vacation)
        return vacations