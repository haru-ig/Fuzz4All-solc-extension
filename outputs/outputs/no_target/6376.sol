pragma solidity ^0.8.0;
contract C {
  function f(uint8 __x, uint8 __y) public pure returns (uint256) {
    require(__y!= 0, "Assertion violation");
    uint256 result;
    if(__y == 0) { result = __x == uint8(0); }
    if(__y!= 0) { result = __x - __y; }
    if(__y == 0) { require(__x!= 0, "Assertion violation"); }
    return result;
  }
}
