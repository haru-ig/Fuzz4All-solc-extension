pragma solidity ^0.8.0;
library Library{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test4 = 21;
    uint constant test = 1000;
    uint result;
    function sumLib() public pure{
        result = test + test2 + test3 + test + test4;
    }
    function divideLib() public pure{
        result = test / test3;
    }
    function modLib() public pure{
        result = test % test2;
    }
    function modLibTwo() public pure{
        result = test % test4;
    }
    function greaterLib() public pure {
        if(
            result >
            test2
        ) {
            result = test2;
            return;
        }
        result = result + test2;
    }
    function greaterEqualLib() public pure{
        if(
            result >=
            test2
        ) {
            result = test2;
            return;
        }
        result = 0;
    }
}
