pragma solidity ^0.8.0;
contract SemanticallyEquivalent28 {
  uint8 a = 1; uint8 b;
  function foo() public pure {
    a; b;
    while (true) {
    }
  }
  function bar() public pure {
    b; a;
    while (true) {
      if (true){
        b; a;
      }
      else {
        b; a;
      }
    }
  }
}
contract SemanticallyEquivalent29 {
  uint8 a = 1; uint8 b;
  function foo(uint8 x) public pure {
    while (true) {
    }
  }
  function get_b() public pure returns(uint8){
    return b;
  }
  function bar(uint8 x, uint8 y) public pure {
    a; b;
    b = x;
    while (true) {
      if (x > y){
        a;
        b = b + 1;
      }
      else {
        a;
        b = b + 1;
      }
    }
  }
  function bla() public pure {
    while (true) {
    }
  }
}
