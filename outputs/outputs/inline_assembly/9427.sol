pragma solidity ^0.8.0;
contract M {








  function foo() external pure {
    unchecked {
      counter = counter + 1;
    }
    counter = counter - 1;
  }
}
