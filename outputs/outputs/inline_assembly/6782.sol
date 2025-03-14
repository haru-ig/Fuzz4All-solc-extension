pragma solidity ^0.8.0;
contract MixedContactsExample5081 {
    event ELog(uint128 num);
    function moreOperations5() pure external {
        uint128 test;
        test = 4;
        test = 5;
        test = 6;
        emit ELog(test);
    }
}
