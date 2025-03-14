pragma solidity ^0.8.0;
contract MixedContactsExample507 {
    event ELog(uint num);
    function anotherOperation5() external {
        uint8 test;
        emit ELog(1);
        test = 0;

        test = 2;
    }

}
