pragma solidity ^0.8.0;
contract Memory
{
  uint constant MAX_MEM_SIZE = 0;
  uint constant ONE_BYTE = 0x20;
  uint memory arr1;
  uint[] arr2;
  constructor() public {
    arr1 = 123 + ONE_BYTE;
    arr2 = new uint[](10);
  }
  function getArrSize() public pure returns (uint) {
    return 0;
  }
}
