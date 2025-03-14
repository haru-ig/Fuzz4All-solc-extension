pragma solidity ^0.8.0;
contract CallerMutated {

    function mutatedFunction() public pure {
        Caller storage caller = CallerStorage('caller');
        caller = CallerStorage('mutatedCaller');
    }
}

contract ReturnTest {

    receive() virtual public  {}

    function test() public pure returns (uint x) {}
}

contract ReturnTestMutated {

    receive() virtual public payable {}

    function test() public pure returns (uint x) {}
}
contract CallerStorage {
    mapping(address => bool) private store;
    constructor() { store[msg.sender] = true; }
    function setCaller() { store[msg.sender] = true; }
}
