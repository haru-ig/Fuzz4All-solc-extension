pragma solidity ^0.8.0;
contract MixedContactsExample508 {
    event ELog(uint128 num);
    function moreOperations5() external {
        uint128 test;
        test = 1;
        test = 2;
        test = 3;
        emit ELog(test);
    }
}
