pragma solidity ^0.8.0;
library B { constructor() public {} function f() public returns (uint) { return B.f(); } }

contract C {
    function g() returns (uint)
    {
        return B.f();
    }
}
