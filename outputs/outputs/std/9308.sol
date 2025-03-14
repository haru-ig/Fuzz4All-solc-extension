pragma solidity ^0.8.0;
contract Legacy
{
    uint256 public x;
    uint8 public x8;
    function set_x(uint256 _x_) public
    {
        x = _x_;
    }
    function set_x8(uint8 _x_) public
    {
        x8 = _x_;
    }
}
