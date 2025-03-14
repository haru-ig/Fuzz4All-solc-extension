pragma solidity ^0.8.0;
library lib {
  struct test {
    uint b;
    function test(uint a) public {
      if (a > 50) {
        assert(true);
        b = 1;
      } else {
        assert(false);
      }
    }
  }
}
