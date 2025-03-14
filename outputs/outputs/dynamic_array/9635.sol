pragma solidity ^0.8.0;
contract Main {
    uint256[] public arr;
    uint256 public contractAddress;
    constructor () public {
        while (arr[arr.length - 10] < contractAddress) {
            arr[arr.length - 1] = arr.length - 10;
        }
        while (arr[arr.length - 10] < contractAddress) {
            arr.push(contractAddress);
        }
    }
}
