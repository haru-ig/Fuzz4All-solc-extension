pragma solidity ^0.8.0;
contract MixedContactsExample510 {
    event ELog(uint128 num);
    constructor() public {
        uint128 test;
        test = 1;
        test = 2;
        test = 3;
        emit ELog(test);
    }
    function moreOperations7() external {
            uint128 test;
            test = 1;
            test = 2;
            test = 45;
            emit ELog(test);
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample511 {
    event ELog(uint128 num);
    constructor() public {
        uint128 test;
        test = 1;
        test = 2;
    }

    function moreOperations8() external {
            uint128 test;
            test = 1;
            test = 2;
            test = 3;
            emit ELog(test);
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample512 {

    uint128 _a;
    uint128 _b;

    constructor() public {
        _a;
        _b;
    }

    function moreOperations9() public {
       uint128 test;
       _a;
       _b;
       test = 1;
       test = 2;
    }
    function moreOperations10() public {
       _a;
       _b;
        uint128 test;
       test = 1;
       test = 2;
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample513 {

    (uint128 a, uint128 b) private _a;
    (uint128 a, uint128 b) public { return (_a.a, _a.b); }

    function moreOperations11() public {
        set();
    }

    function set() public {
        _a = (11111, 22222);
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample514 {

    (uint
