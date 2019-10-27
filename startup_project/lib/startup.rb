require "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    @salaries.has_key?(title)
  end

  def >(other)
    self.funding > other.funding
  end

  def hire(employee_name, title)
    if valid_title?(title)
      @employees << Employee.new(employee_name, title)
    else
      raise "Title invalid"
    end
  end

  def size
    @employees.length
  end

  def pay_employee(employee)
    owed = @salaries[employee.title]
    if @funding >= owed
      employee.pay(owed)
      @funding -= owed
    else
      raise "Insufficient funds"
    end
  end

  def payday
    @employees.each do |employee|
      self.pay_employee(employee)
    end
  end

  def average_salary
    total = 0
    @employees.each do |employee|
    total += @salaries[employee.title]
    end

    puts total
    puts size
    total / size
  end
end