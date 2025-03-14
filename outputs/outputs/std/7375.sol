pragma solidity ^0.8.0;
contract Array {
  uint256[] internal myArray;
  uint256 myArray_min;
  uint256 internal myArray_min_aux;
  uint256 myArray_max;
  uint256 myArray_sum;
  function getArray(bool _isMin) public returns (uint256 _value) {
    if(_isMin) {
      return myArray_min_aux;
    }
    return myArray_sum;
  }
}
