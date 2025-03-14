pragma solidity ^0.8.0;
contract test273 {
    uint [100] a;
    constructor() public {
        a[0] = 1;
        if (a.length == 0) a = [1];
        if (a.length == 2) a[1] = 0;
    }
    function test() public returns (bool) {
        return a[0] > 0;
    }
}
