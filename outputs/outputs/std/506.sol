pragma solidity ^0.8.0;

contract test {
    uint256[] x;


    constructor () {}
    uint256 sumArray() public view returns (uint256) {
        uint256 sum = 0;
        for (uint idx = 0; idx < x.length; idx++) {
            uint256 next = x[idx];
            sum += next;
        }
        return sum;
    }
    function storeArrayElements() public {
        x.push(1);
        x.push(3);
    }
