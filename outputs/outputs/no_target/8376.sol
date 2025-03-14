pragma solidity ^0.8.0;
contract Unsafe2 {
    address a;
    bool b;
    constructor () public {
        a = 4;
        b = true;
    }
    function f() public {
        a = 0;
    }
    function g() public {
        b = false;
    }
}
