pragma solidity ^0.8.0;
contract SemanticallyEquivalent20y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo() public pure {
    x = 2;
    x;
  }
}
contract SemanticallyEquivalent15y {
  uint8 y = 0;
  uint8 x = 0;
  uint8 constant x_constant = 2;
  uint8 constant y_constant = 1;
  function foo() public pure {
    x = 2;
    y = 2;
  }
}
contract SemanticallyEquivalent10y {
  uint8 constant x = 2;
  uint8 constant y = 2;
  uint8 constant x_constant = 6;
  uint8 constant y_constant = 3;
  function foo() public pure {
    x = 3;
    y = 3;
  }
 }
contract SemanticallyEquivalent8y {
  uint8 x = 2;
  uint8 y = 7;
   uint8 constant x_constant = 6;
  uint8 constant y_constant = 1;

  function foo() public pure {
    x = 3;
    y = 12;
    x;
    x_constant;
    y_constant;
  }
}
contract SemanticallyEquivalent18y {
  uint8 constant x = 0x01;
  uint8 constant y = 0xFF;
  uint8 constant x_constant = 0xC0;
  uint8 constant y_constant = 0xFF;

  function foo() public pure {
    x -= 1;
    x_constant -= 0x01;
    y -= 1;
    y_constant += 0x01;
  }
}
contract SemanticallyEquivalent9y {
  uint8 constant x = 0xB0;
  uint8 constant y = 0xFF;
  uint8 constant x_constant = 0xB0;
  uint8 constant y_constant = 0xB0;

  function foo() public pure {
    x -= 1;
    x_constant += 1;
    y += 1;
    y_constant -= 1;
  }
 }
contract SemanticallyEquivalent5y {
  uint8 constant x = 0x01;
  uint8 constant y = 0xFF;
  uint8 constant x_constant = 0x01;
  uint8 constant y_constant = 0xFF;

  function foo() public pure {
    x -= 1;
    y -= 1;
    x_constant -= 1;
    y_constant -= 1;
  }
}
contract SemanticallyEquivalent3y {
  uint8 constant x = 0x80;
  uint8 constant y =
