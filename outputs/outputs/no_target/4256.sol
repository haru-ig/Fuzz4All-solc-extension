pragma solidity ^0.8.0;
contract P26 {
  uint16 x = 2;
  uint16 y = 1 - x;
}
contract P27 {
  uint16 myUint = 7;
}
contract P28 {
  uint8 myBytes[2];
}
contract P29 {
  bool myValue = true;
}
contract P30 {
  function myFunc() public view returns (uint32) {
    return (myValue ||!myValue);
  }
}
contract P31 {
  function myFunc() external view returns (uint32) {
    return uint32(myValue);
  }
}
