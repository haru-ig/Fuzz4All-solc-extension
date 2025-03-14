pragma solidity ^0.8.0;
contract Advanced { function test() public payable returns(uint256[] memory) {
    uint256[] memory x;
    x[0]++;
    return x;
    } }
contract Advanced2 { function test() public payable returns(uint256[] memory) {
    uint256[] memory x;
    for (uint256 x = 0; x < 1; x++) {
        x ++;
    }
    return x;
    } }
