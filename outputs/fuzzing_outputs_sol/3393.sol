pragma solidity ^0.8.0;
contract B {
    function fallback() public pure {
        callSomethingWithException();
    }

    receive() external {

    }
}
contract Caller {
    function callSomethingWithException() public pure {}
    receive() external payable {}
}
