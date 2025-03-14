pragma solidity ^0.8.0;
contract MutatorNew
{
    uint A;
    uint B;
    address owner;
    modifier onlyOwner {
        require(msg.sender == owner, 'Must be owner');
        _;
    }
    constructor(uint _initialA, uint _initialB, address _newOwner) {
        A = _initialA;
        B = _initialB;
        owner = _newOwner;
    }
