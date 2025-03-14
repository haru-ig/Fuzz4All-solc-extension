pragma solidity ^0.8.0;
contract Caller {
    event CallBack(uint i);
    uint x;
    constructor() {x = 42;}
    function update(uint b) public payable {
        x = b;
        emit CallBack(x);
    }
}
