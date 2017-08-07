# class Student
#
#   def initialize(name, cohort)
#     @name = name
#     @cohort = cohort
#   end
#
#   def name
#     return @name
#   end
#
#   def cohort
#     return @cohort
#   end
#
#   def new_name(new_name)
#     @name = new_name
#   end
#
#   def new_cohort(new_cohort)
#     @cohort = new_cohort
#   end
#
#   def talk
#     return "I can talk!"
#   end
#
#   def favlang(favlang)
#     return "My favourite language is #{favlang}"
#   end
#
# end
#
# class Team
#
#   attr_reader(:name, :players, :coach)
#   attr_writer(:name, :players, :coach)
#
#   def initialize(name, players, coach, points)
#     @name = name
#     @players = players
#     @coach = coach
#     @points = points
#   end
#
#   def new_player(new_player)
#     @players.push(new_player)
#     return @players
#   end
#
#   def player_search(player_case)
#     player_match = false
#     for player in @players
#       player_match = true if player_case == player
#     end
#     return player_match
#   end
#
#   def add_points(points)
#     return @points += points
#   end
#
# end

class Library

  attr_reader(:book)
  attr_writer(:book)

  def initialize(books)
    @books = books
  end

  def view
    return @books
  end

  def info(library, title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
  end

  def add(title)
    @books.push(
    {
      title: title,
      rental_details: {
        student: "",
        due_date: ""
        }
      }
    )
  end


  def update(title, student, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student]=student
        book[:rental_details][:due_date]=date
        return book
      end
    end
  end

end
