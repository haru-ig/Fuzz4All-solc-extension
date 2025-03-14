pragma solidity ^0.8.0;
contract Main {
    uint256[] arr;
    constructor () public {
    }
    function () public view returns (uint256) {
        uint256 x = 0;
        while (x < 852982) {
            x = x + 2;
        }
        uint256 z = arr.length;
        arr.push(0);
        for(uint256 i = 1; i < z; ++i) {
            arr[i] = arr[i - 1] + 1;
        }
        return arr.length;
    }
}
