pragma solidity ^0.8.0;
contract MutatedSemantics
{
    uint private immutable i;
    uint public immutable j;
    constructor() {
        i = 0x42;
    }
    receive() external payable {
        j = 12;
    }
}
