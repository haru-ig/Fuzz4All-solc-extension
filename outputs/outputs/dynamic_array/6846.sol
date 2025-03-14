pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract ArrayExample is EVMCUpgradeSafe {

  uint8 public arrayIndex;
  uint8[] public array;


  constructor() {
    array[0] = 1;
    array[1] = 2;
    arrayIndex = 0;
  }


  function getElement(uint8 index) public view returns(uint8) {

    return array[index];
  }


  function getSize() public view returns(bytes32 size) {

    return address(this).encodeWithSelector(0, arrayIndex);
  }


  function assignNewElementToIndex(uint8 value) public {

    arrayIndex = 1;

    array[arrayIndex] = value;
  }


  function assignNewElement(uint8 value) public {

    arrayIndex = 0;

    array[arrayIndex] = value;
  }


  function invert() public {

    uint8 indexBefore = 0;

    uint8 indexAfter = 0;
    for(uint8 i = 0; i < array.length; i++) {

      indexBefore = arrayIndex;

      array[indexBefore] = array[i];

      array[i] = array[array.length - i - 1];

      indexAfter = array.length - i - 1;

      if
