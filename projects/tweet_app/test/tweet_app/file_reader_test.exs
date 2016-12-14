defmodule FileReaderTest do 

    use ExUnit.Case
    
    import Mock
    import TweetApp.FileReader

    doctest TweetApp.FileReader
    
    test "Passing a file should return a string" do 

        str = get_msgs_to_tweet(
            Path.join("#{:code.priv_dir(:tweet_app)}", "tweets.txt")
        )

        assert str != nil
        
    end

    test "will not return a string longer than 140 characters" do 

        str = get_msgs_to_tweet(
            Path.join("#{:code.priv_dir(:tweet_app)}", "/tests/too_long.txt")
        )

        assert str == "short line"

    end

    test "An empty string should return an empty string" do 

        with_mock File, [read!: fn(_) -> "" end] do 
        
            str = pick_string("")

            assert str == ""

        end 


    end

    test "The string should be trimmed" do 
        
        with_mock File, [read!: fn(_) -> " ABCD " end] do 
            
            str = get_msgs_to_tweet("Doesn't exist.txt")

            assert str == "ABCD"

        end

    end

end