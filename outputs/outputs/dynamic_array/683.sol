pragma solidity ^0.8.0;
contract test269 {
    uint[10] a;
    uint[20] b;
    constructor() public {
        for (uint i = 0; i < a.length; i++) a[i] = i;
    }
    function test() public returns (bool) {
        b.push(1);
        return false;
    }
}
