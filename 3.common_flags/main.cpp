#include <iostream>

int main() {
#ifdef DEFINITION_TEST
  std::cout << "DEFINITION_TEST defined" << std::endl;
#else
  std::cout << "DEFINITION_TEST NOT defined" << std::endl;
#endif
  return 0;
}
