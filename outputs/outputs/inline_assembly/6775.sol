pragma solidity ^0.8.0;
contract MixedContactsExample508 {
    event ELog(uint128 num);
    function anotherOperation5() external {
        uint test;
        emit ELog(1);
        test = 0;
        test = 2;
    }
}
