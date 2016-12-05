defmodule ModulePlayground.Misc.Util do

    def square(a), do: a * a

    def sum(a,b), do: a + b
    
    # Call anno. function
    def custom_func(a,f) do
        f.(a)
    end

    def day_abbreviation(day) do

        cond do
            day == :Monday -> "M"
            day == :Tuesday -> "Tu"
            day == :Wednesday -> "W"
            day == :Thursday -> "Th"
            day == :Friday -> "F"
            day == :Saturday -> "Sa"
            day == :Sunday -> "Su"
        end
        
    end



end