pragma solidity ^0.8.0;
contract MutatedCaller is Example {
    modifier onlyMy(){if (checkFor[msg.sender] == SAFETY) _; }
    constructor(address payable _addr) {
        addr = _addr;
        require(addr!= msg.sender);
    }
}
