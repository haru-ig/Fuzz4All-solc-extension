pragma solidity ^0.8.0;
contract Array2 {
   uint public integer;
   bool[256] array;
}
contract Array3 {
   uint public integer;
   bool[6666] array;
}
contract Array4 {
   uint8 public integer;
   bool[4][8] array;
}
contract Array5 {
   uint public integer;
   mapping (bytes32=>bool) array;
}
