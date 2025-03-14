pragma solidity ^0.8.0;
contract C {
    uint256[] public a;
    constructor () {
        a.push(42);
        a[0] = 100;
        a.push(0);
    }
}
