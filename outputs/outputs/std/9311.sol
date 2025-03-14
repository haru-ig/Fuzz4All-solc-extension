pragma solidity ^0.8.0;
contract Legacy
{
    uint256 public x;
    uint8 public x8;
    modifier m(uint256 _x_)
    {
        x = _x_;
        _;
    }

    modifier m8(uint8 _x_)
    {
        x8 = _x_;
        _;
    }

    function set_x(uint256 _x_) public m(_x_)
    {

    }
    function set_x8(uint8 _x_) public m8(_x_)
    {

    }
}
contract Legacy
{
    uint256 public x;
    uint[10] public x10;
    uint8[10] public x8_10;
    uint[23] public x23;
    uint8[23] public x8_23;
    uint[3] public x3;
    uint8[3] public x8_3;
    uint[22] public x22;
    uint256 public x256;

    modifier m(uint256 _x_)
    {
        x = _x_;
        _;
    }

    modifier m8(uint8 _x_)
    {
        x8 = _x_;
        _;
    }

    uint256[26] x26;

    function set_x(uint256 _x_) public m(_x_)
    {
        for (uint256 i; i < 26; i++)
        {
            x26[i] = _x_;
        }
    }
    function set_x8(uint8 _x_) public m8(_x_)
    {
        for (uint8 i; i < 26; i++)
        {
            x26[i] = _x_ + i;
        }
    }
}
