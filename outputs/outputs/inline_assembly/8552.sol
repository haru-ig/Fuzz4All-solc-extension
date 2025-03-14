pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    uint private constant test22 = 337;
    function solve() public pure returns (uint) {
        uint r;
        r = 2;
        r = 1;
        if(
           test2 < test3 ||
           test22 > test3
        ) {
            r = test3;
        } else {
            r = 1;
        }
        if(
            test < test3 ||
            test22 > test3
        ) {
            r = 2;
        }
        return r;
    }
}
