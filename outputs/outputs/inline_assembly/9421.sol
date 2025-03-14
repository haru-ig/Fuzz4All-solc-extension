pragma solidity ^0.8.0;
contract M {
  int counter;

  constructor() {
    counter += 1;
  }

  function foo() onlyOwner {
    counter -= 1;
    unchecked {
      counter += 1;
    }
  }

  function bar() onlyOwner {
    counter += 1;
  }
}
