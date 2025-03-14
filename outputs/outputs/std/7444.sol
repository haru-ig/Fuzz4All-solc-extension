pragma solidity ^0.8.0;
contract Mutated {
    uint[] memory originalArray;
    uint[] memory originalArrayMutated;
    uint[] memory arraySorted;
    uint[] memory arraySortedMutated;


    constructor() {
        originalArray = ArrayNew().populateArray();
        originalArrayMutated = ArrayNew().populateArray();
        arraySorted = ArrayNew().populateArray();
        arraySortedMutated = ArrayNew().populateArray();
    }


    function originalArrayToOriginalMutated() internal pure returns (uint[] memory mutatedArray) {
        mutatedArray = originalArray;
        originalArrayToOriginalMutated();
    }

    function originalArrayToSortedMutated() internal pure returns (uint[] memory mutatedArray) {
        mutatedArray = array;
        arrayToOriginalMutated();
    }

    function originalArrayToArraySortedMutated() internal pure returns (uint[] memory mutatedArray) {
        mutatedArray = arraySorted;
        arrayToOriginalMutated();
    }

    function arrayToOriginalMutated() internal pure returns (uint[] memory mutatedArray) {
        mutatedArray = array;
        originalArrayToOriginalMutated();
    }

    function arrayToSortedMutated() internal pure returns (uint[] memory mutatedArray) {
        mutatedArray = arraySorted;
        originalArrayToOriginalMutated();
    }

    function arrayToArraySortedMutated() internal pure returns (uint[] memory mutatedArray) {
        mutatedArray = arraySorted;
        originalArrayToOriginalMutated();
    }


    function sortedArrayToOriginalArray() internal pure returns (uint[]) {
        arraySortedToOriginalArray();
        originalArrayToArraySortedMutated();
    }
