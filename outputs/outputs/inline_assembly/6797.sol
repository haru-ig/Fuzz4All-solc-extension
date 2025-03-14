pragma solidity ^0.8.0;
contract MixedContactsExample531Mutated {
    event ELog(uint test);
    constructor() public {
        uint test;
        test = 1;
        emit ELog(test);
    }
    function moreOperations11() public {
            uint test;
            test = 1;
            emit ELog(test);
    }
}
