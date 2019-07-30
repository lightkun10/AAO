class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @students = []
    @teachers = []
    @grades = Hash.new { |hash, key| hash[key] = [] }
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(name)
    @teachers << name
  end
  
  def enroll(name)
    if @students.length < @student_capacity
      @students << name 
      true
    else
      false
    end
  end

  def enrolled?(name)
    @students.include?(name)
  end

  def student_to_teacher_ratio
    @students.length / @teachers.length
  end

  def add_grade(student, grade)
    if enrolled?(student)
      @grades[student] << grade
      true
    else
      false
    end
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    return nil if !enrolled?(student) || num_grades(student).zero?

    @grades[student].sum / num_grades(student)
  end
end

