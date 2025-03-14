pragma solidity ^0.8.0;
contract Mutator6 {
    constructor() public {}
    modifier doUpTo(uint256 index) {
        require(index <= uint256(block.number), "must be < 500");
        _;
    }
    function testMethod(bytes32 c, uint256[] memory d) public doUpTo(2) { d[10] = 99; }
}
