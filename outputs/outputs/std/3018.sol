pragma solidity ^0.8.0;
contract ArrayMutationsConceptual  {
   using ArrayMutationsSemantic for uint[];
   uint[] public _array;
   constructor(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        delete _numbers[0];
        uint deletedNumber = _numbers[0];
    }
   function setArrayTo(uint[20] memory _newNumbers) public {
       _array.set(_array.length, 2 * _array.length);
       for(uint ii=0; ii < 20; ii++){
           _array[_array.length + ii] = _newNumbers[ii];
       }
   }
   function getArray() view public returns (uint[] memory) {
       return _array;
   }
   function sortArray() public {
       uint[] memory sortedArray = _array.clone();
       sortArray(sortedArray);
       _array = sortedArray;
   }
   function sortArray(uint[] memory arr) public {
       uint len = arr.length;
       for (uint i = 0; i < len / 2; i++) {
           if (arr[i] > arr[i + 1])
