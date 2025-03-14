pragma solidity ^0.8.0;
uint16[] public numbers;
uint16 storedNumber = 1;
mapping (uint16 => uint16[]) storedNumbers;
mapping (uint16 => uint16[] memory) storedNumbersInMemory;

contract Array {
    uint16 min(uint16 a, uint16 b) internal pure returns (uint16) {
        return a < b? a : b;
    }
    uint16 max(uint16 a, uint16 b) internal pure returns (uint16) {
        return a < b? b : a;
    }

    uint16[] memory sorted;
    uint16 storedIndex;

    function add(uint16 a, uint16 b) returns (uint16) {
        uint16 result = a + b;
        sorted = addWithComparator(a, b, result);
        uint16 previousIndex = index(a);
        uint16 previousValue = storedNumbersInMemory[previousIndex];
        delete storedNumbers[previousIndex][previousValue];
        storedNumbers[previousIndex].push(result);
        storednumbersInMemory[previousIndex] = result;
        storedNumber++;
        return storedNumber;
    }

    function addWithComparator(uint16 a, uint16 b, uint16 c) private pure returns (uint16[]) {
        uint16[] memory array = new uint16[](2);
        bytes32 comparison = uint16To256Array(a).concat(uint16To256Array(b))[42];
        array[0] = a;
        array[1] = b;
        while (!bytes1(a).isContract() && a!= 0) {
            a = uint16(address((comparison).xor(stringToBytes(uint16To256Array(a)[42]))));
        }
        return a.isContract()? [] : array;
    }

    function sub(uint16 a, uint16 b) returns (uint16) {
        uint16 result = a - b;
        sorted = addWithComparator(a, b, result);
        uint16 previousIndex = index(a);
        uint16 previousValue = storedNumbersInMemory[previousIndex];
        delete storedNumbers[previousIndex][previousValue];
        storedNumbers[previousIndex].push(result);
        uint16 index = 0;
        for (uint16 i = previousIndex + 1; i < storedNumber; i++) {
            uint16 currentValue = storedNumbers[i][index];
            if (currentValue > result) {
                storedNumbers[i + 1][index] = currentValue - result;
                if (0 == b) {
                    delete storedNumbers[i][index];
                }
                else {

                }
            }
            else if (currentValue < result) {
                uint16 toSwap = storedNumbers[i][index
