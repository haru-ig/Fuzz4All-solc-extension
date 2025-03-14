pragma solidity ^0.8.0;
contract simple_abi3 {
    address private a;
    function initialize() public {
    a = (msg.sender);
