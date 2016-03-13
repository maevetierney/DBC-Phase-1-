require_relative 'google_results_parser'
require_relative 'fetcher'

class Driver

  def print_results(term)
    i = 1
    term.each do |uri|
      puts "uri #{i}: #{uri}"
      i += 1
    end
  end

  def print_results_for_term(term)
    fetcher = Fetcher.new(term)
    term = fetcher.links
    parser = GoogleResultsParser.new(term)
    print_results(term) 
    parser.frontpage_domains
  end

end

driver = Driver.new

# test *just* GoogleResultsParser
term = ["http://www.google.com//url?q=http://www.ruby-lang.org/&sa=U&ei=MXsdUebRNsbjiwKhk4D4Aw&ved=0CB0QFjAA&usg=AFQjCNGgllyvsdfYNHnE3UY3HXEHskUKig", "http://www.google.com//url?q=http://en.wikipedia.org/wiki/Ruby_(programming_language)&sa=U&ei=MXsdUebRNsbjiwKhk4D4Aw&ved=0CCUQFjAB&usg=AFQjCNGxmT4jYTtjJyDtILRTZrzJ5gAxJA", "http://www.google.com//url?q=http://en.wikipedia.org/wiki/Wikibooks:Ruby_Programming&sa=U&ei=MXsdUebRNsbjiwKhk4D4Aw&ved=0CC4QFjAC&usg=AFQjCNE2zFxbQ9fKzsCGhD5Dm0xsPK9NRQ", "http://www.google.com//url?q=http://www.ruby-doc.org/docs/ProgrammingRuby/&sa=U&ei=MXsdUebRNsbjiwKhk4D4Aw&ved=0CDIQFjAD&usg=AFQjCNEaNqizC3JIHO809k592OJBaHwD_Q", "http://www.google.com//url?q=http://sirupsen.com/what-I-wish-a-ruby-programmer-had-told-me-one-year-ago/&sa=U&ei=MXsdUebRNsbjiwKhk4D4Aw&ved=0CDYQFjAE&usg=AFQjCNGUKheJh4SzBuAVE8qnmJitiVxytA", "http://www.google.com//url?q=http://www.amazon.com/Programming-Ruby-Pragmatic-Programmers-Edition/dp/0974514055&sa=U&ei=MXsdUebRNsbjiwKhk4D4Aw&ved=0CDoQFjAF&usg=AFQjCNGxX5LZlMLaY4UblzNY0E_0xYYD-w", "http://www.google.com//url?q=http://www.amazon.com/Ruby-Programming-Language-David-Flanagan/dp/0596516177&sa=U&ei=MXsdUebRNsbjiwKhk4D4Aw&ved=0CD4QFjAG&usg=AFQjCNFyz2xh7lM-PKrWtTerMkI3vNC1EQ", "http://www.google.com//url?q=http://www.rubycentral.com/book/&sa=U&ei=MXsdUebRNsbjiwKhk4D4Aw&ved=0CEIQFjAH&usg=AFQjCNHi5z8fADo8zw92qOiQzZahMzE5CQ", "http://www.google.com//url?q=http://pragprog.com/book/ruby/programming-ruby&sa=U&ei=MXsdUebRNsbjiwKhk4D4Aw&ved=0CEUQFjAI&usg=AFQjCNEfgmQQMoCze-uSyLIX0ml473DZcw", "http://www.google.com//url?q=http://ruby-challenge.rubylearning.org/&sa=U&ei=MXsdUebRNsbjiwKhk4D4Aw&ved=0CEoQFjAJ&usg=AFQjCNEuXqQUACKidGWgdmrfB7mgOVAxPg"]
parser = GoogleResultsParser.new(term)
driver.print_results(term)
parser.frontpage_domains

puts # insert blank line

# test GoogleResultsParser *and* Fetcher
term = 'devbootcamp'
driver.print_results_for_term(term)