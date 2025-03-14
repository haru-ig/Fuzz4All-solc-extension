pragma solidity ^0.8.0;
contract Legacy
{
    uint256[5] public x;
    constructor(uint256 s0, uint256 s1, uint256 s2, uint256 s3, uint256 s4)
    {
        set_x(s0, s1, s2, s3, s4);
    }
    function set_x(uint256 y1, uint256 y2, uint256 y3, uint256 y4, uint256 y5) public
    {
        x[0] = y1;
        x[1] = y2;
        x[2] = y3;
        x[3] = y4;
        x[4] = y5;
    }
}
