pragma solidity ^0.8.0;
contract Main {
    uint256[] public arr;
    uint256[] public arr2;
    uint256[] public subArr;
    uint256[] public subArr1;
    uint256 public arrAddress;
    constructor () public {
        while (arr.length < 10) {
            arr[arr.length + 1] = arrAddress;
        }
        arr.push(arrAddress);
        while (subArr.length < 10) {
            subArr[subArr.length + 1] = arrAddress;
        }
        subArr.push(arrAddress);
    }
}
