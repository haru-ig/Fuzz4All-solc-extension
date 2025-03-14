pragma solidity ^0.8.0;
contract Value {
    uint constant value = 2;
}
contract Caller is Value {
    uint[] memory arr;
    constructor() public {}
    fallback() external {}
}
