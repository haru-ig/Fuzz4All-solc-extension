pragma solidity ^0.8.0;
contract Array_BetterCase123 {
  uint8 array[];

  function getMin(uint8[] memory _array) public view returns (uint) {
    return _array[0];
  }
  function getMax(uint8[] memory _array) public view returns (uint) {
    return _array[1];
  }
  function getSum(uint8[] memory _array) public view returns (uint) {
    return _array[2];
  }
  function get0(uint8[] memory _array) public view returns (uint) {
    return _array[3];
  }
  function get1(uint8[] memory _array) public view returns (uint) {
    return _array[4];
  }
  function get2(uint8[] memory _array) public view returns (uint) {
    return _array[5];
  }
  function get3(uint8[] memory _array) public view returns (uint) {
    return _array[6];
  }
  function get4(uint8[] memory _array) public view returns (uint) {
    return _array[7];
  }
  function get5(uint8[] memory _array) public view returns (uint) {
    return _array[8];
  }
  function set(uint8[] memory setMin, uint8[] memory setMax, uint8[] memory setSum, uint8 _array) public {
    setMin = minimun(_array);
    setMax = maximun(_array);
    setSum = summation(_array);
    uint8 memory s;
    s = 0;
    uint16[]
