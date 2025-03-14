pragma solidity ^0.8.0;
contract Caller {
    function call() public payable returns (uint) {
        return Mutates(new Mutates()).mutates();
    }
}
