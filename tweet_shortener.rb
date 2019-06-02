def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  dictionary.each do |key, replacement|
    tweet_array.each do |word|
      if word == key
        word.replace replacement
      end
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet_from_array|
    puts word_substituter(tweet_from_array)
  end
end