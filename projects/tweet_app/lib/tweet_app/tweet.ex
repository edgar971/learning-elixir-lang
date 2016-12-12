defmodule TweetApp.Tweet do

    def send(str) do

        ExTwitter.configure(
            consumer_key: System.get_env("ELIXIR_TWEET_APP_EDGAR_CONSUMER_KEY"),
            consumer_secret: System.get_env("ELIXIR_TWEET_APP_EDGAR_CONSUMER_SECRET"),
            access_token: System.get_env("ELIXIR_TWEET_APP_EDGAR_ACCESS_TOKEN"),
            access_token_secret: System.get_env("ELIXIR_TWEET_APP_EDGAR_ACCESS_SECRET")
        )

        ExTwitter.update(str)

    end

end
