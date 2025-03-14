pragma solidity ^0.8.0;

contract Greeter {
    uint constant GREETING_LENGTH = 15;
    uint value = 10;

    function greet() public view returns (string memory) {
