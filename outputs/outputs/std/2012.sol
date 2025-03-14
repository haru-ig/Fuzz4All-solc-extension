pragma solidity ^0.8.0;
contract Array_equivalent_15 {
   function sub(uint x, uint y) public view returns (uint) {return x-y;}
}
contract Array {

   uint arraySize = 13;
   uint[arraySize] numbers;

   uint[13] numbers2;


   uint[] numbers3;


   uint256[] numbers4;

   mapping(uint => uint) numbers5;

   struct MyStruct {
      uint x;
      uint y;
      uint z;
      uint[] stuff;
      mapping(uint => uint) stuff2;
   }

   MyStruct memory numbers6;

   mapping(uint8 => uint) [10][10] memory numbers7;
}
