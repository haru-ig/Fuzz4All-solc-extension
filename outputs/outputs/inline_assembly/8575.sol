pragma solidity ^0.8.0;
contract Modul{
    uint[2] constant test = [2000, 111];
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function solve() public pure returns (uint[2]) {
    uint[2] memory r;
        if(
            test <
            test2
        ) {
            for (uint256 i; i<2; i++) {
                r[i] = 2;
            }
        }
        else {
            for (uint256 i; i<3; i++) {
                r[i] = 7;
            }
        }
        return r;
    }
}
