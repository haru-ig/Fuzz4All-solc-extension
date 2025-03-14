pragma solidity ^0.8.0;
contract FallbackMutator {
    uint256 public fallbackAmount1;
    uint256 public fallbackAmount2;
    uint256 public fallbackAmount3;
    uint256 public fallbackAmount4;
    uint256 public fallbackAmount5;
    uint256 public fallbackAmount6;

    modifier alwaysFallback() {
        if (fallbackAmount1 == 0 || block.timestamp < fallbackAmount1 || block.timestamp > fallbackAmount2 || block.timestamp < fallbackAmount3 || block.timestamp > fallbackAmount4 || block.timestamp < fallbackAmount5 || block.timestamp > fallbackAmount6 || block.timestamp < fallbackAmount1 || block.timestamp > fallbackAmount2 || block.timestamp < fallbackAmount3 || block.timestamp > fallbackAmount4 || block.timestamp < fallbackAmount5 || block.timestamp > fallbackAmount6) {
            throw;
        } else {
            _;
        }
    }

    constructor() {
        fallbackAmount1 = block.timestamp * 10000000000000;
        fallbackAmount2 = block.timestamp * 10000000000000;
        fallbackAmount3 = block.timestamp * 10000000000000;
        fallbackAmount4 = block.timestamp * 10000000000000;
        fallbackAmount5 = block.timestamp * 10000000000000;
        fallbackAmount6 = block.timestamp * 10000000000000;
    }

    function test() {
        fallbackAmount1 = blocks(fallbackAmount1).sub(block.timestamp).mul(1000).div(1000000 * 10000000000);
        fallbackAmount2 = blocks(fallbackAmount2).sub(block.timestamp).mul(1000).div(1000000 * 10000000000);
        fallbackAmount3 = blocks(fallbackAmount3).sub(block.timestamp).mul(1000).div(1000000 * 10000000000);
        fallbackAmount4 = blocks(fallbackAmount4).sub(block.timestamp).mul(1000).div(1000000 * 10000000000);
        fallbackAmount5 = blocks(fallbackAmount5).sub(block.timestamp).mul(1000).div(1000000 * 10000000000);
