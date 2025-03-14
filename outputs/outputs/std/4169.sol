pragma solidity ^0.8.0;
contract Convert{
  uint32 myNum;

  function convert(uint32 x) external view returns (uint8 y) {
    y = uint8(x);
  }
}
