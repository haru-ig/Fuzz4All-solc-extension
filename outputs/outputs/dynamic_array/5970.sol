pragma solidity ^0.8.0;
contract Test29842 {
    constructor() public {
      uint[] storage dataArray = new uint[](10);
      dataArray[0] = 42;
    }
    uint[] public dataArray;
}
