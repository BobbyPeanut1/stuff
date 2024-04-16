class LikeModel:
    def __init__(self, userId, vacationId):
        self.userId = userId
        self.vacationId = vacationId
    
    def display(self):
        print(f"User ID: {self.userId}, Vacation ID: {self.vacationId}")
    
    @staticmethod
    def dictionary_to_like(dictionary):
        userId = dictionary["userId"]
        vacationId = dictionary["vacationId"]
        like = LikeModel(userId, vacationId)
        return like
    
    @staticmethod
    def dictionaries_to_likes(list_of_dictionaries):
        likes = []
        for item in list_of_dictionaries:
            like = LikeModel.dictionary_to_like(item)
            likes.append(like)
        return likes
    