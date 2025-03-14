pragma solidity ^0.8.0;
 contract Main {
    uint256[] arr;
    constructor () public {
        uint256 x = 0;
        while (x < 852982) {
            x = x + 2;
        }
        arr.push(0);
        arr[0] = 5;
        while (arr.length < 10) {

            arr.push(0);
        }
    }
}
