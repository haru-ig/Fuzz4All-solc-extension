pragma solidity ^0.8.0;
contract Unsafe3 {
    address a;
    bool b;
    constructor() public {
        a = address(4);
        b = true;
    }
    function f() public {
        a = address(0);
    }
    function g() public {
        b = false;
    }
}
