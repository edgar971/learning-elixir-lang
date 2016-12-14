defmodule TweetApp.FileReader do 

    # 1. Read the file
    # 2. Split by line breaks
    # 3. Remove any white space
    # 4. Make sure it's a valid tweet
    def get_msgs_to_tweet(path) do 
        File.read!(path)
        |> pick_string
    end

    def pick_string(str) do 
    
        str 
        |> String.split("\n")
        |> Enum.map(&String.trim/1)
        |> Enum.filter(&String.length(&1) <= 140)
        |> Enum.random()

    end

end