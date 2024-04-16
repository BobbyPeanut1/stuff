class CountryModel:
    def __init__(self, countryId, countryName):
        self.countryId = countryId
        self.countryName = countryName
    
    def display(self):
        print(f"Country ID: {self.countryId}, Country Name: {self.countryName}")
    
    @staticmethod
    def dictionary_to_country(dictionary):
        countryId = dictionary["countryId"]
        countryName = dictionary["countryName"]
        country = CountryModel(countryId, countryName)
        return country
    
    @staticmethod
    def dictionaries_to_countries(list_of_dictionaries):
        countries = []
        for item in list_of_dictionaries:
            country = CountryModel.dictionary_to_country(item)
            countries.append(country)
        return countries
    