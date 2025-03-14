pragma solidity ^0.8.0;
contract MixedContactsExample539Mutated {
    event ELog(uint8 test1);
    event ELog2(uint8 test2);
    constructor() public {
        uint8 test1;
        uint8 test2;
        test1 = 1;
        test2 = 1;
        emit ELog(test1);
        emit ELog2(test2);
    }
    function moreOperations10() public {
            uint8 test1;
            uint8 test2;
            test1 = 1;
            test2 = 1;
            emit ELog(test1);
            emit ELog2(test2);
    }
}
contract MixedContactsExample547Mutated {
    event ELog(uint test1, uint test2);
    constructor() public {
        uint test1;
        uint test2;
        test1 = 1;
        test2 = 1;
        emit ELog(test1, test2);
    }
    function moreOperations11() public {
            uint test1;
            uint test2;
            test1 = 1;
            test2 = 1;
            emit ELog(test1, test2);
    }
}
