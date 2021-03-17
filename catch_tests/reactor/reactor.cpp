#define CATCH_CONFIG_MAIN  // This tells Catch to provide a main() - only do this in one cpp file
#define CATCH_CONFIG_ENABLE_BENCHMARKING
#include <catch2/catch_all.hpp>

#include "constants.hpp"
/* ^--- Defines the max_temperature constant as:
* namespace constants {
* constexpr double max_temperature = 100.0;
* }
*/

enum class ReactorState : int { FINE, CRITICAL };

/* Checks whether temperature is above max_temperature and returns a status. */
ReactorState check_reactor_temperature(double temperature_celsius) {
  return temperature_celsius > constants::max_temperature
             ? ReactorState::CRITICAL
             : ReactorState::FINE;
}


TEST_CASE("Check reactor state", "[reactor_state]") {
  REQUIRE(check_reactor_temperature(99) == ReactorState::FINE);
  REQUIRE(check_reactor_temperature(100) == ReactorState::FINE);
  REQUIRE(check_reactor_temperature(101) == ReactorState::CRITICAL);
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
