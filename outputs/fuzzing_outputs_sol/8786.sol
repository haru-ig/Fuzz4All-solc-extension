pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    constructor () public {}
    receive() external payable {}
    fallback()"() external payable {
        revert();
    }
}
