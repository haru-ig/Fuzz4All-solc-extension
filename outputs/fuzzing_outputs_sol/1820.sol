pragma solidity ^0.8.0;
contract MutatedCaller is FallbackCaller {

    function myTransaction() public {
        _doSomething();
    }

    function _doSomething() public {
        assert(true);
    }
}
