pragma solidity ^0.8.0;
contract SemanticallyEquivalentCaller3 {
  address a;
  address b;
  receive() external payable {}
  function semanticallyEquivalentCallerWithFallback1() external {
    i = 10;
    a = 1;
    b = 1;
    SemanticallyEquivalentCaller2(a).semanticallyEquivalentCaller1();
    a = 20;
    b = 2;
    SemanticallyEquivalentCaller2(a).semanticallyEquivalentCaller1();
  }
  function semanticallyEquivalentCallerWithFallback2() external {
    uint a = 10;
    uint b = 10;
    a = a + 1;
    b = b + 1;
    a = a + 1;
    b = b + 1;
    a = a + 1;
    b = b + 1;
    a = a + 1;
    b = b + 1;
    a = a + 1;
    b = b + 1;
    a = a + 1;
    b = b + 1;
    a = a + 1;
    SemanticallyEquivalentCaller2(a).semanticallyEquivalentCaller1();
    a = 40;
    b = 40;
    SemanticallyEquivalentCaller2(a).semanticallyEquivalentCaller1();
  }
  function semanticallyEquivalentCallerWithFallback3() external {
    i = 10;
    address c = address(this);
    b = 2;
    semanticallyEquivalentCaller2(address(this), c, b);
    i = 10;
    c = address(this);
    b = 2;
    semanticallyEquivalentCaller2(address(this), c, b);
    i = 10;
    a = address(this);
    b = 2;
    SemanticallyEquivalentCaller2(a).semanticallyEquivalentCaller1();
    i = 10;
    a = address(this);
    b = 2;
    SemanticallyEquivalentCaller2(a).semanticallyEquivalentCaller1();
  }
}
