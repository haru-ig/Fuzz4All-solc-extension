pragma solidity ^0.8.0;
contract MutativeArrays {
    uint M = 87;
    constructor() {
        nums1 = nums1;
    }
    function min() public view {
        uint min = nums1[0];
        for (uint j = 1; j < nums1.length; j++) {
            if (nums1[j] < min) {
                min = nums1[j];
            }
        }
        assembly {
            min := min
            output.push(add(add(min, M), 500000))
        }
    }
}
