pragma solidity ^0.8.0;
contract MutateMe {
    bool b3;
    uint X;
    uint a1;
    uint a2;
    event ChangeToFalse(uint x);
    modifier True {
        require(b3, Error(ErrorMemory{}));
        _;
    }
    function bar() public True {
        X = 11;
        a1 = 39;
        a2 = 42;
    }
}

pragma solidity ^0.8.0;
contract MutateMe2 {
    bool b3;
    uint X;
    uint a1;
    uint a2;
    event ChangeToFalse(uint x);
    modifier True {
        require(b3, 'AssertionFailed');
        _;
    }
    function bar() public True {
        X = 11;
        a1 = 39;
        a2 = 42;
    }
}

pragma solidity ^0.8.0;
contract MutateMe3 {
    bool b3;
    uint X;
    uint a1;
    uint a2;
    event ChangeToFalse(uint x);
    modifier True {
        X = 11;
        a1 = 39;
        a2 = 42;
        require(b3, 'AssertionFailed');
        _;
    }
    function bar() public True {
        ChangeToFalse();
    }
}

pragma solidity ^0.8.0;
contract MutateMe4 {
    bool b3;
    uint X;
    uint a1;
    uint a2;
    event ChangeToFalse(uint x);
    modifier True {
        X = 11;
        a1 = 39;
        a2 = 42;
        require(b3, 'AssertionFailed');
        _;
    }
    function foo() public True {
        X = 11;
        a1 = 39;
        a2 = 42;
    }
}
