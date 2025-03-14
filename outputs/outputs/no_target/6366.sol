pragma solidity ^0.8.0;
contract mutatedE {
  function getMin() public returns (uint256) {
    uint256 ret;
    assembly {
      ret := mload(0x40)
    }
    return ret;
  }
}
