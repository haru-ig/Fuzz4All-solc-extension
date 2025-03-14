pragma solidity ^0.8.0;
contract Equivalent_contract21_new {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
}
contract Equivalent_contract21_old {
  modifier M1 {uint constant constant1 = 10;
    uint constant constant1 = 10;}
  modifier M2 {uint constant constant1 = 10;
    uint constant constant2 = 10;
}
