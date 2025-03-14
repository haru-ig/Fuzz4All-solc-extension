pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function solve() public pure returns (uint) {
        uint r;
        if(
            (test2 < test) &
            test - test2 ==
                test3
        ) {
            r = 0;
        }
        else r = 3;
        return r;
    }
}
