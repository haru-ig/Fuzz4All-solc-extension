pragma solidity ^0.8.0;
contract Mutated {
  Mutability constant ZERO = Mutability(0);
  uint public value;
  constructor () {
    value = ZERO.value;
    value = value.deposit(0xfff0);
    value = value.deposit(0xfff1);
    value = value.deposit(0xfff2);
    value = ZERO.value;
  }
  function deposit(uint x) public {
    value = Mutability(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x).deposit(x);
  }
}
