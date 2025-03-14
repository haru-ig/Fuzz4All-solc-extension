pragma solidity ^0.8.0;
contract TestCaller2 is TestCaller {
    uint public constant modifiedValue = value + 5;
    receive() external payable {}
}
