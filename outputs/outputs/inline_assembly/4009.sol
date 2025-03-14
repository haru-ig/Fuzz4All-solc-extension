pragma solidity ^0.8.0;
contract SemanticallyEquivalent20z {
   uint8 constant x = 1;
   uint8 constant y = 0;
   function foo() public pure {
    (x, y) = (y, x);

  }
}
contract SemanticallyEquivalent20 {
   uint8 constant x = 1;
   uint8 constant y = 0;
   function foo() public pure {
    (y, x) = (x, y);
  }
}
