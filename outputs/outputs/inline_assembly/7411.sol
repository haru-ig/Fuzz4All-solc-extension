pragma solidity ^0.8.0;
contract Equivalent_contract12_old {
  uint constant constant1 = 20;
  uint constant constant2 = 21;

  function contract_modifier() public {
    assembly {

      mov(32, 40)

      mov(64, 60) }
  }



  function contract_modifier1(uint x) public {
    assembly {

      mov(88, x) }
  }



  function contract_modified2(uint y) public {
    assembly {

      mov(32, constant2)

      mov(88, y - constant1) }
  }
}
