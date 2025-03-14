pragma solidity ^0.8.0;
contract Mutater5 {
    uint32[4] internal array;
    function mutatedFunction() public {
        array[0] = 10;
        array[1] = 20;
        array[2] = 30;
        array[3] = 40;
        _value = 0;
    }
}
