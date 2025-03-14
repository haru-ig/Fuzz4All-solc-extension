pragma solidity ^0.8.0;
contract Mutable2 {
    uint immutable m;
    constructor() public {
        m = 0;
    }
    function f() public {
        m = m + 256;
    }
    function g() public {
        m = 65535;
    }
}
