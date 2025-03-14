pragma solidity ^0.8.0;
contract Unsafe4 {
    uint8 a;
    uint8 b;
    constructor() public {
        a = 300;
        b = 4;
    }
    function f() public {
        a = 0;
    }
    function g() public {
        b = 0;
    }
}
