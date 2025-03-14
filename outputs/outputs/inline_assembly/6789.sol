pragma solidity ^0.8.0;
contract MixedContactsExample510 {
    event ELog(uint256 num);
    constructor() public {
        uint256 test;
        test = 1;
        test = 2;
        test = 3;
        emit ELog(test);
    }
    function moreOperations() external {
            uint256 test;
            test = 1;
            test = 2;
            test = 3;
            emit ELog(test);
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample511 {
    event ELog(uint72 num);
    constructor() public {
        uint72 test;
        test = 1;
        test = 2;
        test = 3;
        emit ELog(test);
    }
    function moreOperations() external {
            uint72 test;
            test = 1;
            test = 2;
            test = 3;
            emit ELog(test);
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample512 {
    event ELog(uint87 num);
    constructor() public {
        uint87 test;
        test = 1;
        test = 2;
        test = 3;
        emit ELog(test);
    }
    function moreOperations() external {
            uint87 test;
            test = 1;
            test = 2;
            test = 3;
            emit ELog(test);
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample513 {
    event ELog(uint7 num);
    constructor() public {
        uint7 test;
        test = 1;
        test = 2;
        test = 3;
        emit ELog(test);
    }
    function moreOperations() external {
            uint7 test;
            test = 1;
            test = 2;
            test = 3;
            emit ELog(test);
    }
}
/* Please create a mutated program that uses a variable of the type uint256, that also stores a value of another type, wherein the value has to be between 0..2**2
