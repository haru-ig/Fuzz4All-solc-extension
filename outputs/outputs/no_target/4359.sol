pragma solidity ^0.8.0;
contract A is R {
    function c() public pure {
      g();
    }
}
contract B is A {
    function b() public pure {
      super.c();
    }
}
contract C is A {
    function c() public pure {
      super.b();
    }
}
contract D is B, C {
    function d() public pure {
      super.c();
    }
}
contract E is D, R {
    function g() public pure {
      super.c();
    }
}
contract F is E {
    constructor() {
        b();
    }
}
