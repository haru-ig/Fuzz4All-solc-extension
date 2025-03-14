pragma solidity ^0.8.0;
contract Example
{
    uint constant X = 21;
    uint y;
    uint private constant Y = 5;
    uint x;
    uint z = X + Y;
    function modX() public pure returns (uint) {
        return X % X;
    }
    function modX_2() public pure returns (uint) {
        return X % 0;
    }
    function getY() public pure returns (uint) {
        return Y % Y;
    }
    function getY_2() public pure returns (uint) {
        uint z1 = z % 21;
        uint z2 = z % 21;
        uint z3 = z % 21;
        uint z4 = z % 21;
        uint z5 = z % 21;
        uint z6 = z % 21;
        uint z7 = z % 21;
        uint z8 = z % 21;
        uint z9 = z % 21;
        uint z10 = z % 21;
        uint z11 = z % 21;
        uint z12 = z % 21;
        uint z13 = z % 21;
        uint z14 = z % 21;
        uint z15 = z % 21;
        uint z16 = z % 21;
        uint z17 = z % 21;
        uint z18 = z % 21;
        uint z19 = z % 21;
        uint z20 = z % 21;
        uint z21 = z % 21;
        return z1;
    }
}
pragma solidity ^0.8.0;
contract Example
{
    uint public x = 99;
    uint public y = x;
    function mutablyAssign() public returns (uint) {
        uint z = x;
        x = 1987;
        y = z;
        return z;
    }
}
