pragma solidity ^0.8.0;
contract C {
  uint256 public constant value = 2;
  uint[8] public v;
  Mover constructor(uint256 _value) {
    v = [_value];
  }

  function incAddress(uint256 _index) public {
    settableAddresses[_index] = address(this);
  }

  function testMultiplication(uint256 _index, uint256 _left, uint256 _right) public returns (uint256){
    return settableAddresses[_index].call{value: 1 * (value / 10) * _right}('');
  }
}
