def dictionary
  { 
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(tweet)
  tweet.split.map { |w| dictionary.has_key?(w.downcase) ? w = dictionary[w.downcase] : w }.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each { |t| puts word_substituter(t) }
end

def selective_tweet_shortener(str)
  str = str[0..140] if str.length > 140 || str.length < 130; str
end

def shortened_tweet_truncator(str)
  s = word_substituter(str); s = "#{s[0..135]} ..." if s.length >= 140; s
end