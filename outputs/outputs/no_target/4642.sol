pragma solidity ^0.8.0;
contract B {
constructor() public {}
function f() public pure {}
function f() public pure {}
}
contract B {
constructor() public {}
function f() public pure {}
function g() public pure {}
}
contract B {
constructor() public {}
function f() public pure { return 99; }
}
contract B {
constructor() public {}
function f() public pure { return 0x800000000000000000000000000000000000000000; }
}
contract B {
constructor() public {}
function f() public pure { return 2**128-1; }
}
contract B {
constructor() public {}
function f() public pure { return 2**(type(uint256).max); }
}
contract B {
constructor() public {}
function f() public pure { return 1/0; }
}
