pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample16 {
  uint256 x;
  function main()
  public pure returns (uint256){
    assembly {
      x := mload(0x40)
    }
    return x;
  }
}
