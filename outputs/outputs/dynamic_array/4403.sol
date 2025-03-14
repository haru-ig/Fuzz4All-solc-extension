pragma solidity ^0.8.0;
contract MutatedSimple { function test() public payable returns(uint256[]) memory {
    uint256 a = 1, b = a+1;
    uint256 c = b+2;
    uint256[] memory x = uint256[](3);
    x[1] = a;

    return x;
    } }
