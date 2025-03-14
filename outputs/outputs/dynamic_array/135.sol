pragma solidity ^0.8.0;
contract C2 {
    uint256[][] public a;
    uint256 value;
    constructor() {
        a[0][0] = value;
        a[0][1] = value;
        a[0][2] = 42;
        a[0][3] = 42;
        a[0][4] = 42;
    }
}
