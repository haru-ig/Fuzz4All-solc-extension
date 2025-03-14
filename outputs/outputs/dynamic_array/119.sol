pragma solidity ^0.8.0;
contract B {
    uint256[] public a;
    uint256 value;
    constructor () {
        value = 123;
        a.push(42);
        a.push(0);
        a[3] = value;
        a[4] = value;
        a[2] = value;
        a[0] = value;
    }
}
