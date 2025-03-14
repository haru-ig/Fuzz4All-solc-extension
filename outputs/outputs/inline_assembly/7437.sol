pragma solidity ^0.8.0;
contract Equivalent_contract13 {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint constant x = 100;
  uint constant y = 2;
}

pragma solidity ^0.8.0;
contract Equivalent_contract13_new {
  uint32 constant constant1 = 2;
  uint32 constant constant2 = 100;
  uint32 constant x = 100;
  uint32 constant y = 2;
}

contract Equivalent_contract13_new_new_new {
  uint16 constant constant1 = 2;
  uint16 constant constant2 = 100;
  uint16 constant x = 100;
  uint16 constant y = 2;
}

pragma solidity ^0.8.0;
contract Equivalent_contract13_asm {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint constant x = 100;
  uint constant y = 2;
  assembly {


    move(0x200, x)
  }
}
