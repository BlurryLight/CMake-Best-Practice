#include <gtest/gtest.h>

TEST(sample_test_case, sample_test) { EXPECT_EQ(1, 1); }
TEST(sample_test_fail_case, sample_test) { EXPECT_FALSE(5 == 2); }

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
