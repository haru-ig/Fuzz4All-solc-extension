pragma solidity ^0.8.0;
contract C2 {
    uint256[] public a;
    uint256 value;
    constructor() {
        a[0] = value;
        a[1] = value;
        a[2] = 42;
        a[3] = 42;
        a[4] = value;
        a[5] = value;
        a[6] = 42;
        a[7] = 42;
    }
}
