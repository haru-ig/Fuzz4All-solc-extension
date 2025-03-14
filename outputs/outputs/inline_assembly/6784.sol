pragma solidity ^0.8.0;
contract MixedContactsExample509 {
    event ELog(uint128 num);
    constructor() public {
        uint128 test;
        test = 1;
        test = 2;
        test = 3;
        emit ELog(test);
    }
    function moreOperations6() external {
            uint128 test;
            test = 1;
            test = 2;
            test = 3;
            emit ELog(test);
    }
}
