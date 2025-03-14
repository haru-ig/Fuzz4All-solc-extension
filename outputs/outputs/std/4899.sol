pragma solidity ^0.8.0;
contract Array {
    constructor() {
        uint[] memory numbers = [
            5,
            "one",
            1
        ];
        uint[] memory copy = [
            6,
            2,
            3,
            4,
            2,
            3,
            4,
            1
        ];
        uint[] storage storageNumbers = [
            4,
            4,
            4,
            4
        ];
        uint[] storage storageCopy = [
            3,
            2,
            3,
            2
        ];
    }
    function sum(uint[] memory numbers) public view returns (uint) {
        uint total = 0;
        for(uint i = 0; i < numbers.length; i++){
            total += numbers[i];
        }
        return total;
    }
    function getMin(uint[] storage array) public view returns (uint) {
        uint min = array[0];
        for(uint i = 1; i < array.length; i++){
            if(array[i] < min)
                min = array[i];
        }
        return min;
    }
    function getMax(uint[] storage array) public view returns (uint) {
        uint max = array[0];
        for(uint i = 1; i < array.length; i++){
            if(array[i] > max)
                max = array[i];
        }
        return max;
    }
}
