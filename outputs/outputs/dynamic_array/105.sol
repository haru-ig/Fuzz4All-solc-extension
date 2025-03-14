pragma solidity ^0.8.0;
contract B {
    uint256[] a;
    constructor () {
        a.push(1);
        a[2] = 2;
    }
}
