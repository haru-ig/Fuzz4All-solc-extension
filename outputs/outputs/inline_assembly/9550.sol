pragma solidity ^0.8.0;
contract MyContract {
    bool b3;
    uint X;
    event ChangeToFalse(uint x);
    modifier True {
        require(b3 == true, 'AssertionFailed');
        _;
    }
    function bar() public True {
        X = 11;
    }
}
