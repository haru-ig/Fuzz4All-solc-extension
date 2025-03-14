pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    event Value(uint witness);
    constructor () { require(value > 0); }
    receive() external payable { emit Value(10); }
    fallback() external payable { emit Value(10); }
}
