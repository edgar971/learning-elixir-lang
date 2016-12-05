defmodule ModulePlayground.Misc.Util.Math do

    def add(a,b) do
        a + b
    end

    # Private function
    defp trace(string) do 
        IO.puts("The value passed is was #{string}");
    end

end