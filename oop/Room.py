class Room:
    def __init__(self, length, width, height):
        self.length = length
        self.width = width
        self.height = height
    def calculate_volume(self):
        return self.length * self.width * self.height
length = float(input("Enter the length of the room (in meters): "))
width = float(input("Enter the width of the room (in meters): "))
height = float(input("Enter the height of the room (in meters): "))
my_room = Room(length, width, height)
volume = my_room.calculate_volume()
print(f"The volume of the room is: {volume} cubic meters")
