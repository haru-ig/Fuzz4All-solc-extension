pragma solidity ^0.8.0;
contract C3 {
    uint256[] public a;
    uint256 value0;
    uint256 value1;
    constructor() {
        value0 = 0;
        value1 = 0;
        a[0] = value0;
        a[1] = value0;
        a[2] = value1;
        a[3] = value1;
        a[0] = 42;
        a[1] = 42;
        a[2] = 42;
        a[3] = 42;
        a[1] = 42;
        a[2] = 42;
    }
}
