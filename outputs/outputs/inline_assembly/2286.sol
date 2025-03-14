pragma solidity ^0.8.0;
contract Semantically {
    uint public a;
    uint256 public sum = 0;
    uint256 public constant MAX = (1 << 256) - 1;

    modifier onlyIfSumLessThan(uint x, bytes memory b) {
        uint y = sum;
        sum += x;
        require(y < x, b);
        _;
    }

    constructor() {
        a = a + 1;
        sum += 1;
    }
    function sum() public view returns (uint) { return sum; }
    function inc1() public onlyIfSumLessThan(200,'my name');
    function inc2() public onlyIfSumLessThan(MAX, 'no more');
}
