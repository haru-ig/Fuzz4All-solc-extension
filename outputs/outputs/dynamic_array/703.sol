pragma solidity ^0.8.0;
contract test273b {
    uint [100] a;
    constructor() public {
        a[0] = 1;
        a[1] = 2;
        if (a.length == 0) a.append(2);
        if (a.length == 1) a[0] = 0;
    }
    function test() public returns (bool) {
        if (a.length == 0) a.append(2);
        if (a.length == 1) a.splice(0, 2);
        return false;
    }
}
