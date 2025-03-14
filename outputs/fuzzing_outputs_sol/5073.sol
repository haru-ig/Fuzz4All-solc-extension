pragma solidity ^0.8.0;
contract Caller {
    event CallBack(uint i);
    uint x;
    constructor() {x = 42;}
    receive() payable public {
        x = msg.value;
        emit CallBack(x);
    }
}
