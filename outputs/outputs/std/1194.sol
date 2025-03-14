pragma solidity ^0.8.0;
contract B5 {

   storage int array = 123;
   function mutIntInt(int index, int _int) public {
       array[index] = _int;
   }
}
