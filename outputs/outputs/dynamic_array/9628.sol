pragma solidity ^0.8.0;
contract Main {
    uint256[] public arr1;
    uint256[] public arr2;
    uint256[] public arr;
    uint256 public contractAddress;
    constructor () public {
        arr1[0] = contractAddress;
        while (arr1.length < 10) {
            arr1[arr1.length + 1] = contractAddress;
        }
    }
}
