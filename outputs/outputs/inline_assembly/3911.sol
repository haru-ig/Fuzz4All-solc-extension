pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  uint x;

  constructor () {x = 0;}

  function bar() virtual public pure {
    x = 3;
  }
}
