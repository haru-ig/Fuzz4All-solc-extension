pragma solidity ^0.8.0;
contract MixedContactsExample515Mutated {
    event ELog(uint8 num);
    constructor() public {
        uint8 test;
        test = 1;
        emit ELog(test);
    }
    function moreOperations7() public {
            uint8 test;
            test = 1;
            emit ELog(test);
    }
}
contract MixedContactsExample521Mutated {
    event ELog(uint test);
    constructor() public {
        uint test;
        test = 1;
        emit ELog(test);
    }
    function moreOperations9() public {
            uint test;
            test = 1;
            emit ELog(test);
    }
}
