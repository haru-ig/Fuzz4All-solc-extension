pragma solidity ^0.8.0;
contract MyContract {
    bool b3;
    event ChangeToTrue(uint x);
    modifier True {
        require(b3 == true, 'AssertionFailed');
        _;
    }
    function bar() public True {
        b3 = true;
    }
}
