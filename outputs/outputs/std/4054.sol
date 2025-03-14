pragma solidity ^0.8.0;
contract Example {
   address constant address2 = 0x414243;
   uint constant uint1 = 1;
   uint constant uint2 = 2;
   uint constant uint3 = 3;
   function multiply (uint a, uint b, Array2 memory array) public returns(uint){
      return a * b;
   }
   function add (uint a, uint b, Array2 memory array) public returns(uint) {
      return a + b;
   }
   function divide (uint a, uint b, Array2 memory array) public returns(uint){
      return a / b;
   }
   function subtract (uint x, Array2 memory array) public returns(uint) {
      return x - array1[1] - array2[1];
   } }

pragma solidity ^0.8.0;
contract Array3 {
   uint[3] public array1;
   uint[2] public array2;
   uint[2] public array3;
   function add(uint[4] memory array1) public returns (uint){
      if(array1[3] == 8)
      {
        Array2 memory array2;
        array1[2] = array2.add(array1[2], array1[3]);
        return array2.array1[1];
      }
      else if(array1[3]=4)
      {
        Array2 memory array2;
      }
      else if((array1[3] = 6) & (array1[3] < 24 & array1[3] > 4))
      {
        Array2 memory array2;
        return array2.array1[array1[3]];
      }
      else {
        Array2 memory array2;
        array1[2] = array2.sum(array1[2], array1[1], array1[3]);
        return array2.array1[2];
      }
   }
}

pragma solidity ^0.8.0;
contract Array4 {
uint[2] public array1;
uint[3] public array2;
uint[2] public array3;
uint[2] public array4;
uint[2] public array5;
uint[3] public array6;
uint[2] public array7;
uint[3] public array8;
address[] public address1;
address[] public address2;
uint[2] public arrayA;
uint[3] public arrayB;
function arrayFunc(Array2 memory array)public{
  Array2 memory array2 = array;
   uint a = array2.add(array1[0], array1[1]);
   return array2.array1[1];
}
function arrayFunc(uint[2] memory array)public{
  Array2 memory array2 = array2;
   uint a = array2.add(array1[0], array1[1]);
   return array2.array1[1] ;
}
function
