defmodule TweetApp.Scheduler do

    def schedule_file(schedule, file) do

        Quantum.add_job(schedule, fn -> 
            TweetApp.FileReader.get_msgs_to_tweet(file) 
            |> TweetApp.TweetServer.tweet end)

    end

end
