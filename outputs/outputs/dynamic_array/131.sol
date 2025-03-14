pragma solidity ^0.8.0;
contract C {
    bytes[] public a;
    uint256 value;
    constructor () {
        a.push(bytes(42));
        value = 314;
        a.push(bytes(42));
        a[0] = value;
        a[1] = value;
        a[2] = value;
        value = 3.14;
    }
}
