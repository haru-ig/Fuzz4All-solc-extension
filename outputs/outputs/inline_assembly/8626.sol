pragma solidity ^0.8.0;
contract Modul {
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    function sum(uint[2] memory _arr) pure public returns (uint) {
        return add( _arr[0], add(_arr[1], add(mul(2, _arr[0]), test), div(mul(2, _arr[1]), test2)) ).add(test);
    }
    function add(uint a, uint b) pure public returns (uint ) {
        return a + b;
    }
    function mul(uint a, uint b) pure public returns (uint ) {
        return a * b;
    }
    function div(uint a, uint b) pure public returns (uint ) {
        return a * b / b;
    }
}

```
