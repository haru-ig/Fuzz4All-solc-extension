pragma solidity ^0.8.0;
contract D {
  function g(uint8 n) public {
    assert(n > 0);
    n--;
  }
}
contract O {
  uint a = 3;
  function call(address self, D calldata x) public returns (uint) {
    self.g(2);
    return a + 1;
  }
}
