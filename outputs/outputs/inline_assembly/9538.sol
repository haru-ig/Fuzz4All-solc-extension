pragma solidity ^0.8.0;
contract MyContract {
    bool b3;
    modifier NotTrue {
        require(b3 == false,"AssertionFailed");
        _;
    }
    function bar() public NotTrue {
        b3 = false;
    }
}
