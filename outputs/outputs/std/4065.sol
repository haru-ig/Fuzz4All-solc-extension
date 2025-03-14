pragma solidity ^0.8.0;
contract Arrays {

   constructor() {
      array(2);
      array(5);
      array(50);
      array(0);
   }

   function array(uint val) public {
      array[val] = val;
   }
   function size() public pure returns (uint) {
      return array.length;
   }
   function index() public pure returns (uint) {
      return array.length;
   }
   function index2(uint256 val) public pure returns (uint) {
      return val;
   }
   function index3(uint val) public pure returns (uint) {
      return val;
   }
   function index4(uint[25] memory mem) public pure returns (uint) {
      return mem.length;
   }
}
