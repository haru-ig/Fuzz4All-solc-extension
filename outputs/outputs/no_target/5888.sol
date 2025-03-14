pragma solidity ^0.8.0;
contract C {
    uint private i;

    constructor() {
        i = 0;
    }

    function bar() {
        i = i + 10;
    }

    function f() internal {
        bar();
    }
}
