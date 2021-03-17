#define CATCH_CONFIG_MAIN  // This tells Catch to provide a main() - only do this in one cpp file
#define CATCH_CONFIG_ENABLE_BENCHMARKING
#include <catch2/catch_all.hpp>

//---------------------------------------------------------------------
// in the fizzbuzz.hpp header file
#include <string>
#include <cstdlib>
#include <iostream>

std::string fizzbuzz(unsigned int n) {
  if (n % 15 == 0) {
    return "FizzBuzz";
  } else if (n % 3 == 0) {
    return "Fizz";
  } else if (n % 5 == 0) {
    return "Buzz";
  } else {
    return std::to_string(n);
  }
}
/*
// in the source file for the main executable
#include <cstdlib>
#include <iostream>

int main() {
  for (auto i = 0; i < 100; ++i) {
    std::cout << fizzbuzz(i) << std::endl;
  }
}
*/
//---------------------------------------------------------------------

TEST_CASE("FizzBuzz", "[fizzbuzz]") {
  auto expected = std::vector<std::string>{
        "1",        "2",    "Fizz", "4",    "Buzz", "Fizz", "7",
        "8",        "Fizz", "Buzz", "11",   "Fizz", "13",   "14",
        "FizzBuzz", "16",   "17",   "Fizz", "19",   "Buzz"};

  for (auto i = 1; i <= 20; ++i) {
    REQUIRE(fizzbuzz(i) == expected[i-1]);
  }
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
