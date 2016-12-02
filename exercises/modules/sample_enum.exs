defmodule App.Enum do 

    def first([]) do 
        nil
    end

    def first([head | tail]) do 
        head
    end

end