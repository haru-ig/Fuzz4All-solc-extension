pragma solidity ^0.8.0;
contract Demon { function test() public payable returns(uint256[] memory) {
    uint256[] memory x;
    x.length = 3;
    x[1] = 2;
    return x;
} }
