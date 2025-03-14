pragma solidity ^0.8.0;
contract test61 {
    uint[3] a;
    constructor() public {
        for (uint i = 0; i < 3; i++) a[i] = i;
    }
    function test() public returns (bool) {
        for (uint i = 0; i < a.length; i++) a[i + 1] = a[i];
        return true;
    }
}
