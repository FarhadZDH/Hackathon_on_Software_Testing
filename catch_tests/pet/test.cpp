#define CATCH_CONFIG_MAIN  // This tells Catch to provide a main() - only do this in one cpp file
#define CATCH_CONFIG_ENABLE_BENCHMARKING
#include <catch2/catch_all.hpp>

#include <string>

class Pet {
 private:
  unsigned int hunger_{0};
  std::string name_{};

 public:
  explicit Pet(std::string name) : name_(name) {}
  void go_for_a_walk() { hunger_ += 1; }
  // ^-- how would you test this function?
  unsigned int hunger() const { return hunger_; }
};

TEST_CASE("Check my pets", "[pets]") {
  auto fido = Pet("fido");
  REQUIRE(fido.hunger() == 0);

  fido.go_for_a_walk();
  REQUIRE(fido.hunger() == 1);
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
