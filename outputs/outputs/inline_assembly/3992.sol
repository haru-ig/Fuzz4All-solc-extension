pragma solidity ^0.8.0;
contract SemanticallyEquivalent08z {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo() public pure {
    assembly { mstore(0, sload(y)) }
  }
}
contract SemanticallyEquivalent08 {
  function foo() public pure {
    SemanticallyEquivalent08y s = new SemanticallyEquivalent08y();
    SemanticallyEquivalent08z s2 = new SemanticallyEquivalent08z();
  }
}
contract SemanticallyEquivalent08a {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function getFoo() public pure returns (uint8) {
    return sub(y, sub(x, 128));
  }
  function setFoo(uint8 a) public pure {

    if (a!= 128) revert();
    mstore(0, y);
  }
}
contract SemanticallyEquivalent08b {
  uint8 constant x = 1 @ external;   @ public pure {
    SemanticallyEquivalent08a s = new SemanticallyEquivalent08a();
    SemanticallyEquivalent08z s2 = new SemanticallyEquivalent08z();
  }
}
