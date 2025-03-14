pragma solidity ^0.8.0;
contract C6_23_2 {
  uint _x;
}
contract A {
  new A();
}

contract B {
  A _a;
}
contract MyContract {
  uint x;

  constructor(address payable y) {
    x = 1;
    A.transfer(_a, payable(new B()));
  }
}
