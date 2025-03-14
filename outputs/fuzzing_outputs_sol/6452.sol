pragma solidity ^0.8.0;
contract C {
    uint public x = 1;
    receive() external payable { x++; }
}
