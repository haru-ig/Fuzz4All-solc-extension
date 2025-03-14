pragma solidity ^0.8.0;
contract SemanticMutation8
{
    uint256 a = 0;
    uint256 b = 1;
    uint256 c;
    constructor(uint a, uint h, uint b) public {
        c = (a + 2 * (b + ((a == 0)? 0 : ((a == 0)? 1 : 2))) | h) + a) * a << 14;
    }
}
