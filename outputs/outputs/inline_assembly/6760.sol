pragma solidity ^0.8.0;
contract MixedContactsExample508 {
    event ELog(uint num);
    function anotherOperation508() external {
        uint8 test;
        ELog(1);
        test = 0;
        test = 2;
    }
}
