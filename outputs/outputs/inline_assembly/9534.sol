pragma solidity ^0.8.0;
contract MyContract {
    bool b3;
    event ChangeToFalse(uint x);
    modifier NotTrue {
        require(b3!= true,"AssertionFailed");
        _;
    }
    function bar() public NotTrue {
        b3 = false;
    }
}
