pragma solidity ^0.8.0;
contract ArrayExample {
    ArrayExampleStorage public data;
    function addOneToArrayReturningTheOriginalArray() public returns (uint[]) {
        ArrayExampleStorage storage storageData = data;
        uint minElement = uint(-1000000000);
        uint maxElement = uint(1000000000);
        uint addedElement = uint(1);
        uint[] memory returnArray = new uint[](2);
        returnArray[0] = minElement;
        returnArray[1] = maxElement + uint(1);
        storageData.sumElement = minElement + addedElement;
        storageData.minElement = minElement;
        storageData.maxElement = maxElement;
        returnArray[0] = minElement + addedElement;
        returnArray[1] = addedElement;
        return returnArray;
    }
    constructor() public {
        data.minElement = uint(10000);
        data.sumElement = uint(1000000000);
        data.maxElement = uint(1000000000);
    }
}
