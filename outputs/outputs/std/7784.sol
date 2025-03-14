pragma solidity ^0.8.0;
contract MutatedFunctionCall {
    constructor() {
        Subroutine sub;
    }
    function f() public beforeF {
        Subroutine sub;
    }
    function g() public beforeG {
        Subroutine sub;
    }
}
