defmodule TweetApp.Scheduler do

    def schedule_file(schedule, file) do

        Quantum.add_job(schedule, fn -> IO.puts
            TweetApp.FileReader.get_msgs_to_tweet
            (file) end
        )

    end

end
