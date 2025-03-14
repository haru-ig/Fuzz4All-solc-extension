pragma solidity ^0.8.0;
contract mutatorExample {
  function mutatorCall() public view {
    NonReturningFallback foo = NonReturningFallback(address(this));
  }
}
