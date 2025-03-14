pragma solidity ^0.8.0;
contract SemanticMutation8
{
    uint256 a = 1;
    uint256 b = 0;
    uint256 c;
    constructor(uint256[] memory a1) public {
        uint256[] storage s1 = a1;
        s1[0] = 0;
        s1[1] = b;
        c = a1[1] + s1[0] + s2;
    }
}
