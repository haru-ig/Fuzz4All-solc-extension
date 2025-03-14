pragma solidity ^0.8.0;
library lib {
    uint256 constant b = 10;
    uint256[8] constant arr2 = [5, 10, 1, 2, 3, 4, 100, 1];
    uint256[3] constant arr3 = [5, 10, 1];
    uint256[10] constant arr10 = [5, 10, 1, 2, 3, 4, 100, 1, 2, 3, 4, 100];
    function f1() public view returns (uint256){
        return 1 / (1 / (1 / (1 / (1 * arr10[10] + arr10[9] + arr10[8] + arr10[7] + arr10[6] + 1) + arr10[5] + 1) * (1 / (1 / (1 / (1 / (1 * arr10[10] + arr10[9] + arr10[8] + arr10[7] + arr10[6] + 1) + arr10[5] + 1) + arr10[5] + 1) + arr10[5] + 1) + arr10[5] + 1) + arr10[5] + 1));
    }
    function f2() public pure{
        (uint256[8] memory arr2x, uint256[3] memory arr3x) = (arr2, arr3);
        uint256[10] memory arr10x = arr10;
        uint256 x = b;
        arr2x[3] = 0;
        x = x / (x / (x / (x / (x / (x / (1 * arr10x[10] + arr10x[9] + arr10x[8] + arr10x[7] + arr10x[6] + 1) + arr10x[5] + 1) * (1 / (1 / (1 / (1 / (x / (x / (1 * arr1
