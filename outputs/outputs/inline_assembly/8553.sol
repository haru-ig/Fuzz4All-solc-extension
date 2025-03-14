pragma solidity ^0.8.0;

contract MyContract {
    uint constant test3 = 1000;
    uint constant test2 = 2048;
    uint constant test = 81721000;
    function solve() public pure returns (uint) {
        uint r;
        r = 2;
        r = 1;

        if(
            test2 < test3 ||
            test2 < test
        ||
            test < test3 ||
            test > test
        ) {
            r = test3;
        } else {
            r = 1;
        }
        r = 2;
        return r;
    }
}
