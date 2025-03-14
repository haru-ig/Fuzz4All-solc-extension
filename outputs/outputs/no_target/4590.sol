pragma solidity ^0.8.0;
contract B {
    function g() public pure{
        f();
    }
    function f() public pure{

    }
}


contract A {
    function f() public pure returns (bool) {
        return false;
    }
}
contract B {
    function g() public pure {
        B.f().assert(false);
    }
}
