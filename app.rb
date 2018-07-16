#loop set to true to run the calculator over and over
loop = true
#class to define square root to make it easier to use
class Float
  def sqrt; Math.sqrt(self); end
end
while loop do
  #function to get string and getInput
  def getInput string
    $stdout.puts string
    $stdout.flush
    return  $stdin.gets.chomp
  end
  #function to do operations, which calls getInput function to get inputs for numbers
  def basic_operations operator, operator_name
    number_1 =  getInput("you chose #{operator_name} \n enter number 1")
    number_2 = getInput("enter number 2")
    puts "answer =", number_1.to_i.send(operator, number_2.to_i), "\n"
  end
  #CASE STATEMENT FOR ADVANCED OR NORMAL Calculator
    case getInput("Which calculator would you like to use ? \n (a) = basic calculator \n (b) = advanced calculator \n (c) = bmi calculator metric \n (d) = bmi calculator empirical")

        #BASIC CALCULATOR
      when "a"
          puts "you have chosen the basic calculator\n"
          puts "choose a option\n"
          puts "addition (a)\n"
          puts "subtraction (b)\n"
          puts "division (c)\n"
          puts "multiplication (d)\n"

      #case statement for basic calculator
        case getInput("enter your choice below ")

          when "a"
            basic_operations(:+ , "addition")

          when "b"

            basic_operations(:- , "subtraction")

          when "c"
            basic_operations(:/ , "division")


          when "d"
            basic_operations(:* , "multiplication")

          else
            puts "I have no idea what to do with that number"
        end

    #ADVANCED CALCULATOR
      when "b"
        puts "you have chosen the advanced calculator"
        puts "choose a option\n"
        puts "power (a)\n"
        puts "square root (b)\n"
        #get input for which function they'd like to use in the advanced calculator
        #case statement for basic calculator
        case getInput("enter your choice below ")
          when "a"
            basic_operations(:**, "power")
          when "b"


     #REALLY PROUD OF THIS LINE BELOW, USES GET INPUT FUNCTION , TURNS IT INTO A FLOAT ABD SQUARE ROOTS IT WOO
            puts getInput("you chose square root, \n enter number to square root below").to_f.sqrt
          else
            puts "invalid choice"
          end

            #going to use our square root function I defined above to make it look nicer, it's more practicle to
            #define sqrt to make it easier to use when there are more square root functions to be done in my oppinion

        #BMI METRIC

      when "c"
        weight = getInput("enter weight in kg ")
        height = getInput("enter height in metres ")
        puts "BMI = ", ((weight.to_f/height.to_f)/height.to_f)






      when "d"
        number_1 = getInput("enter weight in stones ")
        number_2 = getInput("enter height in in feet e.g 5 for 5ft7 ")
        number_3 = getInput("enter how much inches your height is e.g 7 for 5ft7 ")

#get inches from height
        number_2 = number_2.to_f * 12.0
        number_2 = number_2.to_f + number_3.to_f

        #convert stones and inches to kg and metres
        number_2 = number_2.to_f * 0.0254
        number_1 = number_1.to_f * 6.35029
        answer = (number_1.to_f/ number_2.to_f)/number_2
        puts "BMI = #{answer}"












end
#end of calculator

end
#end of loop
