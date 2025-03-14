pragma solidity ^0.8.0;
contract Mutator4 {
    constructor() public {}
    modifier doUpTo(uint256 index) {
        require(index <= uint256(block.number), "must be < 500");
        _;
    }
    function testMethod(int[] memory v) public {
        v[10] = 99;
    }
}
