pragma solidity ^0.8.0;
contract Main {
    address[] public arr;
    address public contractAddress;
    constructor () public {
        uint[2] mem1;
        uint256 x;
        do {
            x = x + 2;
        } while (x < 650201);
        contractAddress = address(this);
        arr.push(contractAddress);
        while (arr.length < 10) {
            arr.push(contractAddress);
        }
    }
}
