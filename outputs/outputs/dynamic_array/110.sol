pragma solidity ^0.8.0;
contract X {
    uint256[] public a;
    constructor () {
        a.length += 1;
    }
}
contract B {
    uint256[] public a;
    constructor () {
        a.length += 1;
    }
}
