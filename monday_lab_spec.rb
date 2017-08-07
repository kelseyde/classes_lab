require ("minitest/autorun")
require_relative("monday_lab")
#
# class TestStudent < MiniTest::Test
#
#   def test_name
#     student = Student.new("Dan", 15)
#     student.new_name("Frank")
#     assert_equal("Frank", student.name)
#   end
#
#   def test_cohort
#     student = Student.new("Jimmy", 12)
#     student.new_cohort(11)
#     assert_equal(11, student.cohort)
#   end
#
#   def test_talk
#     student = Student.new("Ben", 144)
#     assert_equal("I can talk!", student.talk)
#   end
#
#   def test_favlang
#     student = Student.new("Ben", 144)
#     assert_equal("My favourite language is Ruby", student.favlang("Ruby"))
#   end
#
# end
#
# class TestTeam < Minitest::Test
#
#   def test_name
#     team = Team.new("Chelsea", ["Costa", "Hazard"], "Conte", 0)
#     team.coach="Guardiola"
#     assert_equal("Guardiola", team.coach)
#   end
#
#   def test_new_player
#     team = Team.new("Chelsea", ["Costa", "Hazard"], "Conte", 0)
#     team.new_player("Morata")
#     assert_equal(["Costa", "Hazard", "Morata"], team.players)
#   end
#
#   def test_player_search_success
#     team = Team.new("Chelsea", ["Costa", "Hazard"], "Conte", 0)
#     assert_equal(true, team.player_search("Costa"))
#   end
#
#   def test_player_search_failure
#     team = Team.new("Chelsea", ["Costa", "Hazard"], "Conte", 0)
#     assert_equal(false, team.player_search("Rooney"))
#   end
#
#   def test_add_points
#     team = Team.new("Chelsea", ["Costa", "Hazard"], "Conte", 0)
#     assert_equal(2, team.add_points(2))
#   end
#
# end

class TestLibrary < Minitest::Test

  def setup
    @library = [
      {
        title: "Critique",
        rental_details: {
          student: "Evan",
          due_date: "19/08/17"
        }
      },
      {
        title: "Treatise",
        rental_details: {
          student: "Dan",
          due_date: "30/09/17"
        }
      },
      {
        title: "Essays",
        rental_details: {
          student: "Alex",
          due_date: "04/07/18"
        }
      }
    ]
  end

  def test_view
    library = Library.new(
    [
      {
        title: "Critique",
        rental_details: {
          student: "Evan",
          due_date: "19/08/17"
          }
        }
      ]
    )
    assert_equal(
      [
        {
          title: "Critique",
          rental_details: {
            student: "Evan",
            due_date: "19/08/17"
          }
        }
      ],
      library.view)
  end

  def test_info
    library = Library.new(
    [
      {
        title: "Critique",
        rental_details: {
          student: "Evan",
          due_date: "19/08/17"
          }
        }
      ]
    )

    assert_equal(
    {
        student: "Evan",
        due_date: "19/08/17"
      },
    library.info(library, "Critique"))
  end

  def test_add
    library = Library.new(
    [
      {
        title: "Critique",
        rental_details: {
          student: "Evan",
          due_date: "19/08/17"
          }
        }
      ]
    )

    assert_equal(
    [
      {
        title: "Critique",
        rental_details: {
          student: "Evan",
          due_date: "19/08/17"
          }
        },
      {
        title: "Treatise",
        rental_details: {
          student: "",
          due_date: ""
          }
        }
      ],

      library.add("Treatise")
    )
  end

  def test_update
    library = Library.new(
    [
      {
        title: "Critique",
        rental_details: {
          student: "Evan",
          due_date: "19/08/17"
          }
        },
      {
        title: "Essays",
        rental_details: {
          student: "Alex",
          due_date: "04/07/18"
          }
        }
      ]
    )

    assert_equal(

      {
        title: "Critique",
        rental_details: {
          student: "Dan",
          due_date: "19/06/17"
          }
        },
      library.update("Critique", "Dan", "19/06/17")
    )
  end

end
