pragma solidity ^0.8.0;
contract Receiver {
    uint counter;
    uint value;
    receive() payable external {
        counter = 2;
    }
}
