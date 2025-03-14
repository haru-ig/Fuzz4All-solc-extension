pragma solidity ^0.8.0;
contract B {
    uint256[] a;
    constructor () {
        a.push(42);
        a[1] = 0;
    }
}
