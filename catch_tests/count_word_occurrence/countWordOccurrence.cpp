#define CATCH_CONFIG_MAIN  // This tells Catch to provide a main() - only do this in one cpp file
#define CATCH_CONFIG_ENABLE_BENCHMARKING
#include <catch2/catch_all.hpp>

#include <string>

/* Counts how often word appears in text.
 * Example: if text is "one two one two three four"
 *          and word is "one", then this function returns 2
 */
int count_word_occurrence_in_string(const std::string& text, const std::string& word) {
  auto word_count = 0;
  auto count = 0;

  for (const auto ch : text) {
    if (ch == word[word_count]) ++word_count;
    if (word[word_count] == '\0') {
      word_count = 0;
      ++count;
    }
  }

  return count;
}


TEST_CASE("Count occurrences of substring in string", "[count_word_occurrence_in_string]") {
  REQUIRE(count_word_occurrence_in_string("AAA BBB", "AAA") == 1);
  REQUIRE(count_word_occurrence_in_string("AAA AAA", "AAA") == 2);
  REQUIRE(count_word_occurrence_in_string("AAAA", "AAA") == 1);
}

int main( int argc, char* argv[] )
{
  Catch::Session session; // There must be exactly one instance

  // writing to session.configData() here sets defaults
  // this is the preferred way to set them

  int returnCode = session.applyCommandLine( argc, argv );
  if( returnCode != 0 ) // Indicates a command line error
        return returnCode;

  // writing to session.configData() or session.Config() here
  // overrides command line args
  // only do this if you know you need to

  int numFailed = session.run();

  // numFailed is clamped to 255 as some unices only use the lower 8 bits.
  // This clamping has already been applied, so just return it here
  // You can also do any post run clean-up here
  return numFailed;
}
