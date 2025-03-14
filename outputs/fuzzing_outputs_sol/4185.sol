pragma solidity ^0.8.0;
contract MutatedCaller{
    function mutated();

    function fallback() public payable{}
    receive() payable{}
 }
