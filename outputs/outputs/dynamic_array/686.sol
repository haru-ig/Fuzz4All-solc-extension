pragma solidity ^0.8.0;
contract test271 {
    uint[100] a;
    constructor() public {
        a = new uint[](100);
        a.length = a.length;
        a[0] = 42;
    }
    function test() public returns (bool) {
        require(a.length == 1);
        for(uint i = 0; i < 100; i++)
            a[0] = i+1;
        return false;
    }
}
