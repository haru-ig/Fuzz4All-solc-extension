pragma solidity ^0.8.0;
contract Mutant12n7 {
  uint256 a;
  uint256 b;
  uint256 c;
  uint256 x;
  constructor (uint256 a, uint256 b, uint256 c) public {
    x = a+b+c;
    b = a;
    a = b + c;
    b = c;
    c = a;
  }
  function get_a() public view returns (uint256 a) {
    return a;

  }
  function set_a(uint256 x) public {
    a = x - 1;
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
