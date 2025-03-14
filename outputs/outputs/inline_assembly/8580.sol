pragma solidity ^0.8.0;
contract Modul {
    uint constant test1 = 12;
    uint constant test = 1000;
    uint constant test2 = 1347;
    uint constant test3 = 100;
    function solve() public pure returns (uint) {
        uint r;
        if(
            test2 <
            10**32
        ) {
            r = test;
        }
        else
        {
            r = 11;
        }
        return r;
    }
}
