pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity235_arrays6b {
  uint[] private arrayofArraystoUint56;

  function assignArraytoUint56() public{
    arrayofArraystoUint56 = [
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0]
    ];
  }

  function callGetUint56() public view returns(uint[] memory uint56Storage) {
    uint56Storage = arrayofArraystoUint56;
  }

  function replaceUint56() public {
    setUint56(0, 0,0, 0);
    setUint56(0, 0,0, 0);
    setUint56(0, 0,0, 0);
  }

  function replaceUint56toStorage() public {
    uint56Storage = uint56toStorage();
  }

  function setUint56(uint16 x, uint16 y, uint16 z, uint16 w) public {
    arrayofArraystoUint56[x][y][z][w] = 100;
  }

  function callUint56() public view returns(uint56) {
    return uint56(arrayofArraystoUint56);
  }

  function calluint56toStorage() public view returns (uint56[] memory) {
    return uint56toStorage();
  }

  function uint56toStorage() public view returns(uint56[] memory) {
    return arrayofArraystoUint56;
  }

  function setUint56withStorageToUint56() public {
    uint56storage = uint56toStorage();
    arrayofArraystoUint56 = uint56storage;
    setUint56(0, 0,0, 0);
  }
}
