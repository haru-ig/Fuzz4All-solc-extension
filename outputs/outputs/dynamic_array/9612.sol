pragma solidity ^0.8.0;
contract Main {
    address[] arr;
    constructor () public {
        uint256 x = 0;
        while (x < 852982) {
            x = x + 2;
        }
        arr.push(address(this));
        arr[0] = address(this);
        while (arr.length < 10) {
            arr.push(address(this));
        }
    }
}
