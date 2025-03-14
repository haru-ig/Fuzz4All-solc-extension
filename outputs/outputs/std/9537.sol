pragma solidity ^0.8.0;
library Array {
  uint256[] array14;

  function setArray(uint256[] memory _array, uint256 _size) public {
    require(_size <= 100000);
    for (uint256 i = 0; i < _size; i++) {
        _array[i] = i.toUInt256() * 1000;
    }
  }

  function getArray(uint256[] memory _array) public {
    uint256 _sum = 0;
    for (uint256 i = 0; i < _array.length; i++) {
      _sum = _sum + _array[i];
    }
  }


  function min(uint256[] memory _array) public pure returns (uint256 _min) {
    uint256 temp = _array[0];
    for (uint256 i = 1; i < _array.length; i++) {
      if (_array[i] < temp) {
        temp = _array[i];
      }
    }
    return temp;
  }


  function max(uint256[] memory _array) public pure returns (uint256 _max) {
    uint256 temp = _array[0];
    for (uint256 i = 1; i < _array.length; i++) {
      if (_array[i] > temp) {
        temp = _array[i];
      }
    }
    return temp;
  }


  function sum(uint256[] memory _array) public pure returns (uint256 _sum) {
    for (uint256 i = 0; i < _array.length; i++) {
      _sum = _sum + _array[i];
    }
  }
}

pragma solidity ^0.8.0;
contract Mutate9 {
  uint256[] public newaddressarray13;
  uint16 public memory12;
}
