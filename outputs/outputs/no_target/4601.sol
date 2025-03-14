pragma solidity ^0.8.0;
abstract contract A is A {
    function f() external pure {
        return A.f();
    }
}
