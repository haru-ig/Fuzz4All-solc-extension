pragma solidity ^0.8.0;
contract MixedContactsExample867 {
    event ELog(uint128 num);
    function anotherOperation8() external {
        uint8 test;
        emit ELog(1);
        test = false;
        test = true;
    }
}
