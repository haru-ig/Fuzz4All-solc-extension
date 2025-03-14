pragma solidity ^0.8.0;
contract SemanticallyEquivalent18n {
  uint8 constant x = 5;
  uint8 constant y = 2;
  function foo() public pure {
    assembly { mstore(add(y, sub(x, 128)), x) }
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent18m {
  uint8 constant x = 5;
  uint8 constant y = 2;
  function foo() public pure {
    assembly { mstore(add(y, sub(y, 1)), x) }
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent18z {
  uint8 constant x = 5;
  uint8 constant y = 2;
  function foo() public pure {
    assembly { mstore(add(x, sub(y, 128)), x) }
  }
}
