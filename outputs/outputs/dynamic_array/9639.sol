pragma solidity ^0.8.0;
contract Main {
    uint256[] public arr2;
    uint256[] public arr;
    uint256 public contractAddress;
    constructor () public {
        while (arr2.length < 10) {
            arr2[arr2.length + 1] = contractAddress;
        }
        arr2.push(contractAddress);
    }
}
