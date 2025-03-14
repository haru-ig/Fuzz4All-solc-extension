pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    uint[3] memory testMem;
    function solve() public pure returns (uint) {
        uint memory r;
        if(
            test <
            test3
    ) {
            r = r + 3;
        }
        else
        {
            r = r + 11;
        }
        testMem[0] = 3;
        return r;
    }
}
