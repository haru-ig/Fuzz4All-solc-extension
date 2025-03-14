pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function solve() public pure returns (uint) {
        uint r;
        if(
            test2 < test3
        ) {
            r = 2;
            if(
                test < test3
            ) {
                return test3;
            } else {
                return 1;
            }
            return r;
        } else {
            uint i = test2;
            if(test){
                i = test;
            }
            r = 2;
        }
        return r;
    }
}
```
