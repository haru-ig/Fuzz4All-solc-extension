pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function solve() public returns (uint) {
        uint r;
        bool isGreather;
        isGreather = test > test2;
        if(
            isGreather
        ) {
            r = 2;
        }
        return r;
    }
}
