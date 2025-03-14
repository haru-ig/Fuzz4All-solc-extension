pragma solidity ^0.8.0;
contract Mutated {
    function f() public {
        require(beforeF(f()));
    }
    function g() public {
        require(!(beforeG(f())));
    }
}
contract MutatedTest {
    function f() public {
        Mutated mutated;
        mutated.f();
    }
}
