pragma solidity ^0.8.0;
contract Modul3 {
    uint constant test = 100;
    function solve() public pure returns (uint) {
        uint r;
        r = test;
        r += 1;
        r -= 1;
        return r;
    }
}
