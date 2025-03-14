pragma solidity ^0.8.0;
contract Mutator7 {
 modifier doUpTo(uint256 index) {
     require(index <= uint256(block.number), "must be < 500");
     _;
 }
    function testMethod(bytes32 c, uint256[] memory d) public {
        for (uint8 i = 1; i <= 10; i++) {
            d[i] = 2**128-1-i;
        }
    }
}
