pragma solidity ^0.8.0;
contract Caller {
    function call() public pure returns (uint) {
        callFallback();
        return 3;
    }
    receive() external pure {}
    function callFallback() public pure {
    }
}
contract CallerExample {
    function callInContract() public pure returns (uint) {
        return CallerExample.callerCaller().call().decode(Demonstration.decodeABI);
    }
    function callerCaller() public pure returns (Caller) {
        return new Caller();
    }
}
