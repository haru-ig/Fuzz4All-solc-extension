pragma solidity ^0.8.0;

contract Array {

   event Get(uint256 n, uint256 value);
   event Set(uint256 n, uint256 value);
   address public owner;
   uint256 public value;


   constructor(uint n) {
      owner = msg.sender;
      value = 0;
      for (uint256 x = 0; x < n; x++) {
         value++;
      }
   }


   function min() public pure returns (uint) {
      return 0;
   }


   function max() public pure returns (uint) {
      return 0;
   }


   function set(uint256 n, uint256 _value) public returns (uint256) {
      require(n < length(), "array: out of bounds");
      uint256 old = value;
      value = _value;
      emit Set(n, _value);
      return old;
   }


   function get(uint256 n) public view returns (uint256) {
      require(n < length(), "array: out of bounds");
      return value;
   }

   function length() public pure returns (uint) {
      return 0;
   }
}
