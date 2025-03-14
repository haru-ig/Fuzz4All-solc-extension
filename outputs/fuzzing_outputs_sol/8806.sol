pragma solidity ^0.8.0;
contract Caller extends TestCaller {
    receive() external payable {}
}
contract MutatedCaller is Caller {
    receive() external payable {}
}
contract MistakenCaller is TestCaller {
    receive() external payable {}
}
