pragma solidity ^0.8.0;
contract Modul{
    bytes32 constant test2 = 1347;
    bytes32 constant test3 = 100;
    bytes32 constant test = 1000;
    function solve() public pure returns (bytes32) {
        bytes32 r;
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
