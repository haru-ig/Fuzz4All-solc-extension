pragma solidity ^0.8.0;
contract MyContract {
    bool b3;
    event ChangeToFalse(uint x);
    modifier False { require(b3 == false,"AssertionFailed"); _; }
    function bar() public False {
        b3 = false;
    }
}
