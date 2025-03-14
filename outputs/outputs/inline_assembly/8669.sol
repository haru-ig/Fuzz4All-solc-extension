pragma solidity ^0.8.0;
contract Moduls{
    uint public s = 0;
    constructor(uint i) {
        s = i + 3;
    }
    fallback() external {
        s += i;
    }
}
