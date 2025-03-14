pragma solidity ^0.8.0;
contract Mutations {
  constructor() {
    Caller c = Caller(msg.sender);
    c.foo();
  }
}
