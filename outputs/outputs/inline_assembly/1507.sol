pragma solidity ^0.8.0;
contract Mutant12n8 {
  uint256 a;
  uint256 b;
  uint256 c;
  uint256 x;
  constructor (uint256 a, uint256 b, uint256 c) public {
    x = a + b;
    a = 0;
    b = 0;
    uint256 a1 = 0;
    uint256 a2 = 0;
    uint256 a3 = 0;
    uint256 d = 1;
    x = x * d;
    x = b * c;
    a2 = a + 1;
    a3 = a2 + 1;
    c = b + c;
    d = add(a, a2);
    d = 0;
  }
  function add(uint256 a, uint256 b) pure internal returns (uint256){
    return a + b;
  }
  function get_a() public view returns (uint256 a) {
    uint256 ret = 0;
    assembly {
      ret := a
    }
    return ret;
  }
  function get_b() public view returns (uint256 b) {
    uint256 ret = 0;
    assembly {
      ret := b
    }
    return ret;
  }
  function get_c() public view returns (uint256 c) {
    uint256 ret = 0;
    assembly {
      ret := c
    }
    return ret;
  }
}

pragma solidity ^0.8.0;
contract Mutant12n9 {
  uint256 a;
  uint256 b;
  uint256 c;
  uint256 x;
