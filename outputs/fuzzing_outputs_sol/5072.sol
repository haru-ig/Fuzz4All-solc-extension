pragma solidity ^0.8.0;
contract Caller1 {
    event CallBack(uint i);
    uint x;
    constructor() {x = 42;}
    function update(uint b) public {
        x = b;
        emit CallBack(x);
    }
    receive() payable {
        if (msg.value == x) {
            revert();
        }
        x++;
        emit CallBack(x);
    }
}
