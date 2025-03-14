pragma solidity ^0.8.0;
contract Array6 {
   uint public integer;
   mapping (address=>uint) array;
}
contract Array7 {
   uint8 public integer;
   address[2] array;
}
contract Array8 {
   uint[] public integer;
}
contract Array9 {
   uint256[] public integer;
}
contract Array10 {
   uint[4][] public integer;
   uint8[2][] public integer;
   bytes32[][] public integer;
}
contract Array11 {
   mapping (bytes32=>uint) integer;
   mapping (address=>uint) integer;
}
contract Array12 {
   mapping (address=>uint) integer;
   mapping (address=>uint)[] public integer;
}
