pragma solidity ^0.8.0;
contract Equivalent_contract10_new_old {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint constant constant3 = 1000;
  function add() external returns (uint) {
    return constant3 + constant1 + constant2;
  }
  function subtract(uint a) public returns (uint) {
    return constant3 - (a + constant1);
  }
}
