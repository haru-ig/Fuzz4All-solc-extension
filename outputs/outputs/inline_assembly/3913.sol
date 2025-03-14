pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  function x;
  modifier modifer1() {
    x += 4;
    _;
    x += 2;
  }
  modifier modifer2() {
    x += 3;
    _;
    x -= x-y;
  }
  function foo(uint x, uint y) public pure {



  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent22 {
  uint public x;
  modifier modifer1() {
    x += 4;
    _;
    x += 2;
  }
  modifier modifer2() {
    x += 3;
    _;
    x += x-y;
  }
  function foo() public pure {
    x = y-x+2;
    x += 8;
  }
}
contract SemanticallyEquivalent23 {
  uint public x;
  uint public y;
  modifier modifer1() {
    x += 4;
    _;
    x += 2;
  }
  modifier modifer2() {
    x += 3;
    _;
    x += x-y;
  }
  function foo() public nonpayable pure {



    uint malicious = 5+6+7;
    uint b = x-y*4+x*3;
    x += malicious;
    x += (3*4)+(12/3)+((12*13)-2);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent24 {
  bool public x;
  modifier modifer1() {
    x = x+1;
    _;
    x *= x+1;
  }
  modifier modifer2() {
    x *= x+1;
    _;
    x *=
