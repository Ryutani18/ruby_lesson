class Student
  def initialize(name)
    @name = name
  end
  
  def cal_avg(data)
    sum = 0
    for i in data do
      sum += i
    end
    avg = sum / data.length
    return avg
  end

  def judge(avg)
    if avg >= 60
      result = "passed"
    else
      result = "failed"
    end
    return result
  end

  attr_accessor :name

end

a001 = Student.new("sato")
data = [30, 50, 65, 70, 10]
avg = a001.cal_avg(data)
result = a001.judge(avg)

puts a001.name + " " + result
puts avg