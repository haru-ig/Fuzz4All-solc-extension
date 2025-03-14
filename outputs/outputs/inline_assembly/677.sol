pragma solidity ^0.8.0;
contract Mutator6 {
 modifier doUpTo(uint256 index) {
     require(index <= uint256(block.number), "must be < 425");
     _;
 }
    function testMethod(bytes32 x, uint256[] memory d) public {
        d[10] = 8;
    }
}
