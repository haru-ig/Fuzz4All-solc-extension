pragma solidity ^0.8.0;
contract Main {
    address[] public arr;
    address public contractAddress;
    constructor () public {
        uint256 x = 0;
        while (x < 852982) {
            x = x + 2;
        }
        contractAddress = address(this);
        arr.push(contractAddress);
        arr.push(contractAddress);
        while (arr.length < 10) {
            arr.push(contractAddress);
        }
    }
}
