pragma solidity ^0.8.0;
contract test270 {
    bytes[1] a;
    uint i;
    constructor() public {
        for (i = 0; i <a.length; i++) a[i] = i;
    }
    function test() public returns (bool) {
        for (uint i = 0; i < 3; i++) a[0] = 1;
        return false;
    }
}
