pragma solidity ^0.8.0;
contract SemanticallyEquivalent19 {
  function foo() public pure {
    assembly { gstore_slot 1, 10 }
    assembly { gstore_slot 2, 20 }
  }
  function bar() public pure {
    assembly { gstore_slot 0, 30 }
  }
}
