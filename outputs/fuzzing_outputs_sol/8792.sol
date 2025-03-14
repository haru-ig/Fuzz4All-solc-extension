pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    constructor () public {}

    fallback() internal {}

    receive() public payable {}
}
