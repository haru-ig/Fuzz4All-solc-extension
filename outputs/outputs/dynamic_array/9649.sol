pragma solidity ^0.8.0;
contract Main {
    uint256[] public arr;
    uint256[] public arr2;
    uint256[] public subArr;
    uint256[] public subArr1;
    constructor () public {
        uint256 _arrAddress = arrAddress;
        while (arr.length < 10) {
            arr[arr.length + 1] = _arrAddress;
        }
        arr.push(_arrAddress);
        for(uint256 j = 0; j < 10; j++) {
            while (subArr.length < 10) {
                subArr[subArr.length + 1] = arrAddress;
            }
            subArr.push(arrAddress);
        }
    }
}
