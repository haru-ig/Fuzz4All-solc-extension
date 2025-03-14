pragma solidity ^0.8.0;
contract Array {
   uint public integer;
   bool[4] array;
}
contract Array2 {
   uint public integer;
   address public[15] array;
}
contract Array3 {
   uint public integer;
   mapping (uint=>uint) array;
}
contract Array4 {
   uint8 public integer;
   bytes4 array;
}
contract Array5 {
   uint public integer;
   struct A {uint x;} array;
}
