pragma solidity ^0.8.0;
contract Mutant12n5 {
  uint256 a;
  uint256 b;
  uint256 c;
  uint256 x;
  constructor (uint256 a, uint256 b, uint256 c) public {
    x = a;
    b = b + a;
    a = b + c;
    c = a;
    a = c;
  }
  function get_b() public view returns (uint256 b) {
    return b;
  }
  function set_b(uint256 x) public {
    b = x - 1;
  }
  function get_c() public view returns (uint256 c) {
    return c;
  }
  function set_c(uint256 x) public {
    c = x - 1;
  }
}
