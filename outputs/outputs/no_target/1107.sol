pragma solidity ^0.8.0;
contract SemanticMutation7
{
    uint256 a = 1;
    uint256 b = 0;
    uint256 c;
    constructor(uint256 i) public {
        c = i + b + (b ^ a) + (b >> 9) + (b << 10);
    }
}
