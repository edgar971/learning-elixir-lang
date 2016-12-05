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

            true -> "Invalid day"
        end

    end

    def describe_date(date) do

        case(date) do
            {1, _, _} -> "Brand new month!"
            {25, 12, _} -> "Merry Christmas"
            {25, month, _} -> "Only #{12 - month} months left."
            # Pattern matching
            {_, month,_} when month <= 12 -> "Just an average day."
            {_,_,_} -> "Invalid month"
        end

    end



end