pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    uint r;
    function solve() public pure returns (uint) {
        uint test2 = 1347;
        uint test3 = 100;
        uint test = 1000;
        if(
            test <
            test2
        ) {
            r = 2;
        }
        else {
            r = 7;
        }
        return r;
    }
}
