pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedStateCaller {
  byte[] memory bytes;

  constructor (byte[] memory initBytes) public {
    bytes = initBytes;
  }

  function _calculate() public pure returns (byte[]) {
    return bytes;
  }
  function _modifyPure() public {
    bytes[4] = '9e14e3';
  }
}
