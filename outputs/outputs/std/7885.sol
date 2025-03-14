pragma solidity ^0.8.0;
contract Array_2 {

    uint256[] arr;


    modifier _preCondition(uint256 value, uint256 position) { require(value <= arr[position], "ARRAY_PRED_FAILED"); _; }


    constructor() public {
        arr.push(1);
    }


    function push(uint256 value) public {
        arr.push(value);
    }
    function getMin() public view _preCondition(uint256 a, 0) returns (uint256) {
        return a;
    }
    function getMax() public view _preCondition(uint256 a, arr.length - 1) returns(uint256) {
        return a;
    }
    function getSum() public view _preCondition(uint256 a, arr.length) returns (uint256) {
        return a;
    }
    function sort() public {
        uint256 temp, i;

        for (uint256 j = 0; j < arr.length - 1; j++) {

            i = j;

            for (uint256 k = j + 1; k < arr.length; k++) {

                if (arr[k] < arr[i]) {
                    i = k;
                }
            }

            if (i!= j) {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    }
contract Convert_2 {
    function hexToDec(uint256 value) public pure returns (uint256) {
        return uint256(uint160(value));
    }
    }
contract Math_2 {
    function sqrt(uint256 value) public pure returns (uint256) {
        return uint256(uint256(uint160(value)) ** 0.5);
    }
    }
contract Multiprecision_2 {
    function addition(uint256 a, uint256 b) public pure returns (uint256) {
        return (a + b) % 100;
    }
    function subtraction(uint256 a, uint256 b) public pure returns (uint256) {
        return (a - b) % 100;
    }
    function multiplication(uint256 a, uint256 b) public pure returns (uint256) {
        return (a * b) % 100;
    }
    function division
