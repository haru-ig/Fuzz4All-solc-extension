pragma solidity ^0.8.0;
contract Main {
    uint256[] public arr11;
    uint256[] public arr21;
    uint256[] public arr;
    uint256[] public arr1;
    uint256 public contractAddress;
    constructor () public {
        while (arr1.length < 10) {
            arr1.push(contractAddress);
        }
        arr1.push(contractAddress);

        arr11[0] = contractAddress;
        arr11 = arr11.reverse();
    }
}
