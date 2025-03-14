pragma solidity ^0.8.0;

contract Array
{
    uint256 private array[2];

    mapping ( uint256=>uint256) public array_int;

    bool public success;

    constructor () {
        uint256 len = 1000000;
        for(uint256 i = 0; i < len; i++) {
            array[1-i] = i;
            array_int[i+10]=i;
        }
        array_int[0] = 0;
        array_int[100] = 0;
        tryAdd(array[0], 0, array[1]);
        if(array[0]!= 88 && array[0]!= 0){
            success = false;
        }
    }

    function tryAdd(uint256 a, uint256 b, uint256 c) internal returns (bool success) {
        uint256 d = a + b;
        if (d!= 0) c = d;
        return d == 0;
    }
}
```
