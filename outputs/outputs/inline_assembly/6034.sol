pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample6Mutated {
    address public owner;
    uint256 public arrayLength;
    uint256[] internal array;
    uint256[] internal modifiedArray;
    function main() public {
        owner = msg.sender;
        arrayLength = array.length;
        for (uint256 i = 0; i < arrayLength; i++) {
            array[i][1] += 1;
            array[i][5] += 1;
            array[i][10] += 1;
        }
        for (uint256 i = arrayLength + 1; i < 3 * arrayLength; i += 2) {
            modifiedArray[i] = i;
            modifiedArray[i + 1] = i + 1;
        }
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample6MutatedNonDeterministic {
    address public owner;
    uint256 public arrayLength;
    uint256[] internal array;
    uint256[] internal modifiedArray;
    function main() public {
        owner = msg.sender;
        arrayLength = array.length;
        bool doneFirstHalf = false;
        uint256 halfToGet = arrayLength / 2;
        for (uint256 i = 0; i < halfToGet + 1; i++) {
            if (array[i] > 0) {
                array[i] += 1;
            } else {
                doneFirstHalf = true;
            }
        }
        for (uint256 i = arrayLength + 1; i < 2 * halfToGet + 1; i += 2) {
            array[i] += 1;
            array[i + 1] += 1;
        }

        if (!doneFirstHalf) {
            uint256 remainder = arrayLength % 2;
            for (uint256 i = 0; i < remainder + 1; i++) {
                if (array[arrayLength - (i + 1)] > 0) {
                    array[arrayLength - (i + 1)] += 1;
