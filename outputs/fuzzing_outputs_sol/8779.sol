pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    constructor () public { require(value > 0); }
    receive() external payable {}
}
