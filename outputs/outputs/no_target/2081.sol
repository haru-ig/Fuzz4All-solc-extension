pragma solidity ^0.8.0;
contract NoCheckChange {
    uint16 b;
    constructor(uint16 _b) public{
        b = _b / 2;
    }

}
