pragma solidity ^0.8.0;
contract MixedContactsExample621 {
    event ELog(uint128 num);
    constructor() public {
        uint128 test;
        test = 1;
        test = test + 3;
        emit ELog(test);
    }
    function moreOperations9() external {
            uint128 test;
            test = 1;
            test = test + 3;
            emit ELog(test);
    }
}
