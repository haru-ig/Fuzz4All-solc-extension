pragma solidity ^0.8.0;
contract Convert {
  uint8 public charToNum;
  struct AddressHolder { uint110 addr; }
  function numToChar(uint8 num) public pure returns (uint8) { return num; }
  function strToAddress(string memory str) public pure returns (uint110) { return (uint110(keccak256(bytes(str))).toUint110() + 1); }
  function getAddress(AddressHolder memory x) public pure returns (uint110) { return (x.addr + 1); }
  function getAddressFromChar(uint8 a) public pure returns (uint110) {
    if (a <= 9) return (a - 1);
    return (10 + (numToChar(a) - 1));
  }
}
