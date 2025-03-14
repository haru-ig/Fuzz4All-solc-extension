pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function solve() public pure returns (uint) {
        uint r;
        if(test < test3) {
            r = 3;
        } else {
            r = 11;
        }
        return r;
    }
}
