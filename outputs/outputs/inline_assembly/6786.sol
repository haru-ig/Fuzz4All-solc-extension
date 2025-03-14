pragma solidity ^0.8.0;
contract MixedContactsExample510 {
    function mutableOperations22() external {
        uint test;
        test = 1;
        test = 2;
        test = 3;
        emit ELog(test);
    }
}
