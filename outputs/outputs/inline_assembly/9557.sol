pragma solidity ^0.8.0;
contract MyContract {
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
