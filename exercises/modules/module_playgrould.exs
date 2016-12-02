# Define Module
defmodule ModulePlayground do
    # Import the IO module and only the puts function
    import IO, only: [puts: 1]

    # Can be used to rename modules
    alias ModulePlayground.Misc.Util.Math, as: CoolMath

    # Bring macros
    require Integer

    #  Define function
    def say_hey_bro do 
        
        puts "Hey bro! Changed again!"
    
    end

    # Redefine the inspect module
    def inspect(param1) do 
        
        puts "Start output"
        puts param1
        puts "Ending output"

    end

    # Print sum function
    def print_sum do 

        CoolMath.add(1,5)

    end

    def print_is_even(num) do 
        puts "Is #{num} even? #{Integer.is_even(num)}"
    end

end