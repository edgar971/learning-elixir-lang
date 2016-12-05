defmodule ModulePlayground.Misc.Util do

    def square(a), do: a * a

    def sum(a,b), do: a + b
    
    # Call anno. function
    def custom_func(a,f) do
        f.(a)
    end



end