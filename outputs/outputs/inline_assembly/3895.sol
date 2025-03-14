pragma solidity ^0.8.0;

library SafeMath {

function add(int a, int b) internal pure return (int c) {
  c = a + b;
}
}
contract MutatedSemanticallyEquivalent18 {
  function _mutate() internal pure {
    int _sum = SafeMath.add(8, SafeMath.add(8, 8));
    int _zero = 0;
  }
  function foo() public pure {
    _mutate();
  }
  uint public c = 5u;
}
