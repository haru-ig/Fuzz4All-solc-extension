pragma solidity ^0.8.0;
contract MutateExample {
    uint256 result;
    uint arr1[3] = [ 1, 5, 3 ];

    function add(uint a) public {
        result = a + arr1[2];
    }
}

contract MutateExample {
    int arr2[3] = [ 30, 8, 2 ];

    function add(int a) public {
        result = a + arr2[1];
    }
}
