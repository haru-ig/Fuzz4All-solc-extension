pragma solidity ^0.8.0;
contract MyContract {
    bool false_;
    event ChangeToTrue(uint x);
    modifier False {
        require(b3 == false, 'AssertionFailed');
        _;
    }
    function bar() public False {
        X = 15;
    }
}
