pragma solidity ^0.8.0;
contract Mutator {
  uint256 public constant initialValue = 10;
  mapping (uint256 => array[2][][] public matrix);
  function setNumbers(uint256 _matrixSize) public {
    matrix[_matrixSize] = [ [ [ 3, 5 ], [ 7, 9 ], [ 9, 11 ] ], [ [ 6, 8 ], [ 10, 12 ], [ 3, 5 ] ] ];
  }
  function getSubArray(uint256 _matrixSize, uint256 _index) public view returns(uint256[2][] memory){
    array[2][][] memory subArray = matrix[_matrixSize];
    if (_index < 0) {
      return subArray[_index].map {x => x[0]};
    } else {
      return subArray[_index].map { x => x.length > 0? x[0] : 0x555555555555555555555555555555555555555555555555555555555555 };
    }
  }
  function divide(uint256 _left, uint256 _right) public view returns(uint256[2][] memory){
    uint256 left = settableValues[_left];
    uint256 right = settableValues[_right];
    uint256 total = left / right;
    return getSubArray(3 * (left + right), divide(total, 3));
  }
  function add(uint256 _left, uint256 _right) public view returns(uint256[2][] memory){
    uint256 left = settableValues[_left];
    uint256 right = settableValues[_right];
    uint256 total = left + right;
    return getSubArray(3 * (left + right), divide(total, 3));
  }
  function subtract(uint256 _left, uint256 _right) public view returns(uint256[2][] memory){
    uint256 left = settableValues[_left];
    uint256 right = settableValues[_right];
    uint25
