pragma solidity ^0.8.0;

import "./ArrayMutatorConstants.sol";
contract ArrayMutator{
  function add(uint256 x, uint256 y) public pure returns(uint256){
    return x + y;
  }
  function subtract(uint256 x, uint256 y) public pure returns(uint256){
    return x - y;
  }
  function multiply(uint256 x, uint256 y) public pure returns(uint256){
    return x * y;
  }
  function divide(uint256 x, uint256 y) public pure returns(uint256){
    return x / y;
  }
  function multiplyConstantBy(address target, uint256 value) public view returns(uint256){
    uint256 newValue = target.balance * value;
    if(newValue > (type(uint256).max)){
      newValue = (type(uint256).max);
    }
    return newValue;
  }
  function square(uint256 x) public pure returns(uint256){
    return x ** 2;
  }
  function addConstantTo(address target, uint256 value) public view returns(uint256){
    uint256 newValue = target.balance + value;
    if(newValue > (type(uint256).max)){
      newValue = (type(uint256).max);
    }
    return newValue;
  }
  function subtractConstantFrom(address target, uint256 value) public view returns(uint256){
    uint256 newValue  = target.balance - value;
    if(newValue < ArrayMutatorConstants.ADDRESS_TYPE_MIN()){
      newValue = ArrayMutatorConstants.ADDRESS_TYPE_MIN();
    }
    return newValue;
  }
  function isOdd(uint256 x) public pure returns(bool) {
    if(x % 2 == 0){
      return true;
    }
    return false;
  }
  function setArray(address[] storage array, uint index, uint256 value) public {
    array[index] = value;
  }
  function getArrayElement(address[] memory array, uint index) public view returns(uint256){
    return array[index];
  }
  function sortArrayElements(address[] storage array) public returns(address array1){
        address temp;
        uint256 i;
        for(i = 0; i< array.length - 1; i++){
          require(array[i]  > array[i+1], "Not increasing");
          address temp1 = array[i+1];
          array[i+1] = array[i];
          array[i] = temp1;
        }
        return array1;
  }

}
