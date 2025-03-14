pragma solidity ^0.8.0;
contract Mutator7 {
 modifier doUpTo(uint256 index) {
     require(index <= uint256(block.number), "must be < uint32(block.number)");
     _;
 }
    function testMethod(string memory s) public {
        s.sub((block.coinbase));
    }
}
