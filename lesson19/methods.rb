require "net/http"

def get_random_regex_string
  patterns = ["cat", "ball", "abs", "one"]

  pattern = patterns.sample

  letter = pattern.split("").sample
  
  return pattern.gsub(letter, ".")
end

# Does this word exist in Wiki Dictionary?
def word_exists?(word)
  url = "https://en.wiktionary.org/wiki/#{word}"

  wiktionary_page = Net::HTTP.get(URI.parse(URI.encode(url)))

  if wiktionary_page =~ /Wiktionary does not yet have an entry/
    return false
  else
    return true
  end
end