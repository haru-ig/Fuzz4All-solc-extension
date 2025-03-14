pragma solidity ^0.8.0;
contract Mutator5 {
    constructor() public {}
    modifier doUpTo(uint256 index) {
        require(index <= uint500, "must be < 500");
        _;
    }
    function testMethod(int64[] memory v) public {
        v[10] = 99;
    }
}
