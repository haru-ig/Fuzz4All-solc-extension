pragma solidity ^0.8.0;
contract C {
    function g(C c) public {
        c.f();
        c.f();
    }
}
