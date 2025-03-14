pragma solidity ^0.8.0;
contract Main {
    address[] public arr;
    address public contractAddress;
    constructor () public {
        arr[0] = contractAddress;
        arr[1] = contractAddress;
        while (arr.length < 10) {
            arr[arr.length + 1] = contractAddress;
        }
    }
}
