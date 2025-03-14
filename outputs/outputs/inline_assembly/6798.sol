pragma solidity ^0.8.0;
contract MixedContactsExample641Mutated {
    event ELog(uint24 num);
    uint24 test;
    constructor() public {
        uint24 _test;
        _test = 1;
        test = _test;
        emit ELog(_test);
    }
    function moreOperations40() public {
            uint24 _test;
            _test = 1;
            test = _test;
            emit ELog(_test);
    }
}
contract MixedContactsExample665Mutated {
    event ELog(uint25 num);
    uint25 test;
    constructor() public {
        uint25 _test;
        _test = 1;
        test = _test;
        emit ELog(_test);
    }
    function moreOperations101() public {
            uint25 _test;
            _test = 1;
            test = _test;
            emit ELog(_test);
    }
}
