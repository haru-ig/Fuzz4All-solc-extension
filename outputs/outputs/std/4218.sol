pragma solidity ^0.8.0;
library Array {

  uint public constant SIZE = 10;
  uint[] internal _data;
  modifier access(uint y) { require(y < _data.length); _; }

  function findMin(uint[] memory input) public view returns(uint) {
    uint min = input[SIZE - 1];
    for (uint i = 1; i < input.length; i++) {
      if (input[i] < min) {
        min = input[i];
      }
    }
    return min;

  }
  function findMax(uint[] memory input) public view returns(uint) {
    uint max = input[0];
    for (uint i = 1; i < input.length; i++) {
      if (input[i] > max) {
        max = input[i];
      }
    }
    return max;
  }

  function sum(uint[] memory input) public view returns(uint) {
    uint sum = 0;
    for (uint i = 0; i < input.length; i++) {
      sum = sum + input[i];
    }
    return sum;
  }

  function set(uint[] memory input, uint idx, uint newValue) public access(idx) {
    uint[] memory result = new uint[](SIZE);
    bool found = false;
    for (uint i = 0; i < result.length; i++) {
      if (idx == i) {
        if (result[i]!= 0) {
          found = true;
        }
        result[i] = newValue;
      } else {
        result[i] = input[i];
      }
    }
    _data = result;
  }

  function get(uint[] memory input, uint idx) public view access(idx)  returns(uint) {
    return input[idx];
  }

  function appendItem(uint[] memory input, uint newValue) public {
    _data.push(newValue);
    uint[] memory newValueArray = new uint[](SIZE + 1);
    for (uint i = 0; i < SIZE; i++) {
      newValueArray[i] = input[i];
    }
    newValueArray[SIZE] = newValue;
    _data = newValueArray;
  }
  function sort(uint[] memory input) public pure {
    uint[] memory result = new uint[](SIZE);
    for (uint i = 0; i < result.length; i++) {
      uint minIdx = i;
      for (uint j = i + 1; j < SIZE; j++) {
        if (input[j] < input[minIdx]) {
          minIdx = j;
        }
      }
      result[i] = input[minIdx];
    }
    return result;
  }

    function print() public view {
        for(uint i = 0 ; i < SIZE; i++) {
            print(i," - ",_data[i]);
        }
    }
