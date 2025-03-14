pragma solidity ^0.8.0;
contract MyContract {
    uint number;
    function foo() public {
        emit ChangeToFalse(number);
    }
    bool is_false;
    event ChangeToTrue(uint x);
    modifier True {
        require(is_false == false, 'AssertionFailed');
        _;
    }
    function bar() public {
        is_false = false;
    }
}
