pragma solidity ^0.8.0;
contract Modul2{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function solve() public pure returns (uint) {
        uint[2] memory tmp;
        uint v;
        v = test + 2;
        tmp[0] = test;
        tmp[1] = test2;
        return tmp[1];
    }
}
