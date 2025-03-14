pragma solidity ^0.8.0;
contract MixedContactsExample515 {
    event ELog(uint8 num);
    constructor() public {
        uint8 test;
        test = 1;
        test = 2;
        test = 3;
        emit ELog(test);
    }
    function moreOperations6() external {
            uint8 test;
            test = 1;
            test = 2;
            test = 3;
            emit ELog(test);
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample521 {
    event ELog(uint test);
    constructor() public {
        uint test;
        test = 1;
        test = 2;
        test = 3;
        emit ELog(test);
    }
    function moreOperations8() external {
            uint test;
            test = 1;
            test = 2;
            test = 3;
            emit ELog(test);
    }
}
