require_relative "room"

class Hotel
  def initialize(name, room_caps)
    @name = name
    @rooms = {}
    room_caps.each { |key, value| @rooms[key] = Room.new(value) }
  end

  def name
    @name.split(" ").map(&:capitalize).join(" ")
  end

  def rooms
    @rooms
  end

  def room_exists?(room)
    @rooms.key?(room)
  end

  def check_in(person, room)
    if room_exists?(room)
      if @rooms[room].add_occupant(person)
        p "check in successful"
      else
        p "sorry, room is full"
      end
    else
      p "sorry, room does not exist"
    end
  end

  def has_vacancy?
    @rooms.values.any? { |room| room.available_space > 0 }
  end

  def list_rooms
    @rooms.each { |room_name, room| puts "#{room_name} : #{room.available_space}" }
    # @rooms.each { |key| p "#{key} + #{room.available_space}" }
  end
end

# hotel = Hotel.new("hilbert's grand hotel", "Basement" => 4, "Attic" => 2, "Under the Stairs" => 1)
# hotel.check_in("Jesse", "Basement")
# hotel.check_in("Walter", "Basement")
# hotel.check_in("Gus", "Basement")
# hotel.check_in("Hank", "Basement")
# hotel.check_in("Rick", "Attic")
# hotel.check_in("Morty", "Attic")
# hotel.check_in("Harry", "Under the Stairs")

# p hotel.has_vacancy?
# p hotel.list_rooms
