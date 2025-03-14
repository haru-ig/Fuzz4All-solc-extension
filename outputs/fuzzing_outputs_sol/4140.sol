pragma solidity ^0.8.0;
contract MutatedCaller3 {
    receive() external payable {}
}
struct Caller4Test {
    address payable _caller;
}
contract Caller4 {
    Caller4Test test;
    call() public pure returns (bool) {
        return true;
    }
}
