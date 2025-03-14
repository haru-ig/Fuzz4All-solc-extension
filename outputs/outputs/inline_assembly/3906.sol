pragma solidity ^0.8.0;
contract SemanticallyEquivalent19 {

  function foo() public pure {
    assembly { revert(0, 0) }
  }

  function bar() public pure {
    assembly { revert(0, return(0)) }
  }
}


pragma solidity ^0.8.0;
contract SemanticallyEquivalent20 {
  function foo() public pure {
    assembly { revert(0, return(0)) }
  }
  function bar() public pure {
    assembly { revert(0, output) }
  }
  uint public output;
  uint256 public value;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  function foo() public pure {
    assembly { revert(0, div(value, 5)) }
  }
}
