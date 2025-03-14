pragma solidity ^0.8.0;
contract failuremutablefallback_copymutable
{
    uint constant n = 5;
    constructor() {
        receive();
    }
    receive() payable external {
        revert();
    }
}
