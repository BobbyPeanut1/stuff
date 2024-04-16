class RoleModel:
    def __init__(self, roleId, roleName):
        self.roleId = roleId
        self.roleName = roleName
    
    def display(self):
        print(f"Role ID: {self.roleId}, Role Name: {self.roleName}")

    @staticmethod
    def dictionary_to_role(dictionary):
        roleId = dictionary["roleId"]
        roleName = dictionary["roleName"]
        role = RoleModel(roleId, roleName)
        return role
    
    @staticmethod
    def dictionaries_to_roles(list_of_dictionaries):
        roles = []
        for item in list_of_dictionaries:
            role = RoleModel.dictionary_to_role(item)
            roles.append(role)
        return roles
