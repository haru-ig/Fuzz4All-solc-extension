pragma solidity ^0.8.0;
contract Mutator {
    uint[5] memory array1;
    uint[3] memory array2;
    uint[] memory array3;
    uint8[1] memory array4;
    uint storage storageValue;
    uint mutable stateValue;
    uint constant falseValue = 0;
    uint constant oneValue = 1;

    constructor () {
    }


    function newArray(
        uint num,
        uint value
    ) public pure returns (uint[] memory) {
        uint[] memory newArray = new uint[](num);
        uint idx;
        for(idx = 0; idx < num; idx ++)
            newArray[idx] = value+idx;
        return newArray;
    }
}
