pragma solidity ^0.8.0;
contract Caller {
    address public fallbackCaller;
    address public fallbackCaller2;
    address public fallbackCaller3;
    mapping(address => bool) public fallbackCallerMap;

    receive() external payable { fallbackCaller = msg.sender; }
    receive() external payable { fallbackCaller2 = msg.sender; }

    fallback() external payable {}
}
