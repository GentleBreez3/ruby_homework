begin
    puts "Enter a number from the keyboard:"
    a = Integer(gets.chomp)
  
    until a<100
       puts "Please enter a number less than 100:"
       a = Integer(gets.chomp) 
    end
  rescue
    puts "Please enter a number:"
    retry
  end
  
  i = 0
  count = 0
  for i in 0..a do
      j = 2
      f = 0
    if i<=1
      f = 1
    else
        while j < i
            if i % j == 0
                f = 1
                break
            end
            j+=1
        end
        if f == 0
           puts i
        end
    end
  end