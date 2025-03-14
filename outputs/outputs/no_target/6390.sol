pragma solidity ^0.8.0;
contract mutatedC {
  function f(uint8 a) public pure returns (uint256) {
    uint8 as_unsigned = a % 2;
    if( as_unsigned == 1) {
      return uint256(2);
    }

  }
}
