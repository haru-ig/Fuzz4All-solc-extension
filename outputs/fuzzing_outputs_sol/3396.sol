pragma solidity ^0.8.0;
contract C {
    function fallback () public pure {}
}


contract D is B {
    receive() external payable {}
}
contract Caller {

    function Caller() { }
    function callFallback() public payable { }
    function callReceive() public { }
    function callFallback1() public { }
}
