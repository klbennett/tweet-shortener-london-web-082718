# Write your code here.

def dictionary
  words = {"hello" => "hi",
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"For" => '4',
"four" => '4',
'be' => 'b',
'you' =>'u',
"at" => "@" ,
"and" => "&"}
end

def word_substituter(tweet)
	tweet_short = tweet.split
  
   tweet_short.map! {|word|
  	if dictionary.keys.include? (word)
  		dictionary[word]
  	else
  		word
  	end
   }
 	tweet_short.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |shorter_word|
    puts word_substituter(shorter_word)
  end
end

def selective_tweet_shortener(tweets)
  tweets.
  if tweets.length >  140
    tweets.each do |x|
    puts word_substituter(x)
  end
else
  tweets
end
end
