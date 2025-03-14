pragma solidity ^0.8.0;
contract Mutant12n5 {
  uint256 internal a;
  uint256 internal b;
  function set(uint256 x) public {
    a = 1 + 100000000000000000000000000000;
    bool ret = a > 500000000000;
    b = ret;
  }
  function get() public view returns (uint256, uint256)  {
    uint256 a_ = a + 1;
    return ( 1, b );
  }
}
