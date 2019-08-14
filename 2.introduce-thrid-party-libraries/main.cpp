#include <boost/program_options.hpp>
#include <iostream>
#include <string>

namespace bo = boost::program_options;

int main(int argc, char const *argv[]) {
  bo::options_description options("All options");
  options.add_options()("help", "produce help message");
  bo::variables_map vm;
  bo::store(bo::parse_command_line(argc, argv, options), vm);
  bo::notify(vm);

  if (vm.count("help")) {
    std::cout << options << "\n";
    return 1;
  }
}
