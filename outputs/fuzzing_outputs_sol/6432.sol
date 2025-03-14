pragma solidity ^0.8.0;
contract C {
    uint public x;
    mapping (address => uint) map;
    receive() external {
        map[msg.sender]++;
        x++;
    }
}
