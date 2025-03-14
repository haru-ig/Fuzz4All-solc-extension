pragma solidity ^0.8.0;
contract B {
    uint256[] public a;
    constructor () {
        a.push(42);
        a.push(0);
    }
}
