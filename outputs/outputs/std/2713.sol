pragma solidity ^0.8.0;
contract NonConstant {
   uint8 nonConstant;
}
contract BasicArray {

   uint256[1] arr;
}
contract ArrayArithmetic {

   function sum(uint256[] memory arr) public pure returns (uint256 sum) {
      return arr.reduce((a,b) => a + b, 0);
   }

   function at(uint256[] memory arr, uint256 index) public view returns (uint256 item) {
      require(index < arr.length, "Index is out of bounds");
      return arr[index];
   }

   function push(uint256[] memory arr, uint256 item) public returns (uint32 index) {
      arr.push(item);
      index = uint32(arr.length - 1);
      return;
   }

   function pushReturnZero(uint256[] memory arr) public returns (uint32 index) {
      arr.push(1);
      index = uint32(arr.length - 1);
      return;
   }

   function pushValue(uint256[] memory arr, uint256 value, uint256 _index) public returns (uint32 index) {
      arr.push(value);
      index = uint32(_index);
      return;
   }

   function lengthZeroLength(uint256[] memory arr) public pure returns (bool) {
      return arr.length!= 0;
   }

   function lengthZeroLengthEqualOne(uint256[] memory arr) public pure returns (bool) {
      return (arr.length == 0) || (arr.length == 1);
   }

   function lengthZeroIndexInBounds(uint256[] memory arr, uint256 index) public pure returns (bool) {
      require(index < arr.length, "Index is out of bounds");
      return arr.length == 0 || index < arr.length - 1;
   }

   function lengthZeroIndexInBoundsEqualTwo(uint256[] memory arr, uint256 index) public pure returns (bool) {
      require(index < arr.length, "Index is out of bounds");
      return arr.length == 0 || (arr.length == 1 && index < (arr.length - 2));
   }

   function lengthOneLengthEqualOne(uint256[] memory
