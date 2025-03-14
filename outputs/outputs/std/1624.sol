pragma solidity ^0.8.0;
contract MutatedApp_2 {
    uint private constant MIN = 0;
    uint private constant MAX = 28;


    function findMinimalElement(uint[] memory array) public view returns (uint minimal) {

        for (uint i = 0; i < array.length; i++) {

            if (array[i] < minimal) {
                minimal = array[i];
            }
        }
    }


    function findMaximalElement(uint[] memory array) public view returns (uint maximal) {

        for (uint i = 0; i < array.length; i++) {

            if (array[i] > maximal) {
                maximal = array[i];
            }
        }
    }


    function arraySum(uint[] memory array) public returns (uint sum) {
        uint sumCurrent = 0;

        for (uint i = 0; i < array.length; i++) {

            sumCurrent += array[i];
        }
    }


    function sortArrayUsingBubbleSort(uint[] memory arr) public {

        while (arr.length > 1) {

            uint currentIndex = arr.length - 1;
            uint firstElement = arr[0];
            for (uint i = 0; i < arr.length - 1; i++) {

                if (arr[i + 1] < firstElement) {

                    firstElement = arr[i + 1];
                    currentIndex = i + 1;
                }
            }

            arr[currentIndex] = arr[0];

            arr[0] = arr[currentIndex];


            if (arr.length!= currentIndex + 1) {
                continue;
            }


            break;
        }
    }
}
