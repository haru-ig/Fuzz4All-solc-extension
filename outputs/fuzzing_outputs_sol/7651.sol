pragma solidity ^0.8.0;

contract MutatedSemanticEquivalence
{
    uint public constant number = 1;
    constructor()
    {
        number = 2;
    }
    modifier onlyOne() {
        if(msg.sender == address(this)) _;
    }
    function fallback () public payable onlyOne { }
    receive () external payable onlyOne { }
}
