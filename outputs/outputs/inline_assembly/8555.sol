pragma solidity ^0.8.0;
contract Modul{
    uint constant test = 1000;
    bytes32 constant test = 1234;
    function() public {}
    function solve() public pure returns (uint) {
        return ~test;
    }
}
