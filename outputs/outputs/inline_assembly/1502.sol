pragma solidity ^0.8.0;
contract Mutant12n7 {
    uint256 a;
    uint256 b;
    uint256 c;
  function mutate(uint256 _in) public {
    c = _in;
    a = 123;
    b = -123;
  }
  function get() public view returns (uint256) {
    return a;
  }
}
