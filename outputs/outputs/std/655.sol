pragma solidity ^0.8.0;
library Array
{
  using Math for uint;

  uint[] public array;
  uint public constant min_index;
  uint public constant max_index;
  function sum(uint[] memory array) public pure returns (uint) {
    uint sum = 0;
    for (uint i = min_index; i < max_index; i++) {
      sum += array[i];
    }
    return sum;
  }
  function max(uint x) public pure returns (uint y)
  {
    y = x;
    for (uint i = min_index + 1; i < max_index; i++) {
      if (array[i] > y) {
        y = array[i];
      }
    }
  }
  function min(uint x) public pure returns (uint y)
  {
    y = x;
    for (uint i = min_index + 1; i < max_index; i++) {
      if (array[i] < y) {
        y = array[i];
      }
    }
  }
  function set(uint array_index, uint value) public
  {
    array[array_index] = value;
  }
  function get(uint array_index) public pure returns (uint)
  {
    return (array[array_index]);
  }
  function reverse(uint array_index) public
  {
    uint temp = get(array_index);
    array[array_index] = array[array_index - 1];
    array[array_index - 1] = temp;
  }
  function sort(uint[] memory array) public
  {
    bytes memory str = "ASC";
    for (uint i = min_index + 1, j = max_index - 1; i < j; i++) {
      uint temp = array[i];
      uint value = array[i - 1];
      array[i - 1] = value;
      array[i] = temp;
    }
  }
}
