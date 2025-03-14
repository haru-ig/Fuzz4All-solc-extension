pragma solidity ^0.8.0;
contructor (address from) public {
	owner = from;
}
contract ArrayExample {
  function sum(uint[] memory array) public returns (uint) {
    uint sum = 0;
    for (uint i = 0; i < array.length; i++) {
      sum += array[i];
    }
    return sum;
  }
  function multiply(uint left, uint right) public returns (uint) {
    return left * right;
  }
  function minimum(uint array1, uint array2) public returns (uint) {
    uint minimum = array1;
    for (uint i = 0; i < array2.length; i++) {
      if (array2[i] < minimum) {
        minimum = array2[i];
      }
    }
    return minimum;
  }
  function maximum(uint array1, uint array2) public returns (uint) {
    uint maximum = array1;
    for (uint i = 0; i < array2.length; i++) {
      if (array2[i] > maximum) {
        maximum = array2[i];
      }
    }
    return maximum;
  }
  function countArrayElements(uint[] memory array) public returns (uint) {
    uint count = 0;
    for (uint i = 0; i < array.length; i++) {
      count++;
    }
    return count;
  }
  function checkArrayOrder(uint i, uint j, uint[] memory array) public returns (uint) {
    if (array[i] <= array[j]) return i;
    else return j;
  }
  function getArrayArray(uint i, uint j, uint[] memory array) public {
    array[i] *= array[j];
    if (i!= 5) {
      uint k = getArrayArray(6, 5, array);
    }
  }
  function printArray(uint[] memory array) public {
    print(multiply(3, minimum(1, maximum(6, countArrayElements(array))))))

  }
}
