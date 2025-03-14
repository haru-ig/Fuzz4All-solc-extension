pragma solidity ^0.8.0;
contract alternativeC {
  function f(uint8 a) public returns (uint256)
  {
    uint a_as_unsigned = a % 2;
    uint256 res;
    if( a_as_unsigned > 1) {
      res = uint256(2) % 2;
    } else {
      res = uint256(1);
    }
    return res;
  }
}
