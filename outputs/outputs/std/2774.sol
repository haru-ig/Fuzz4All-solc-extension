pragma solidity ^0.8.0;
contract MutantArithmetic
{
    uint32 x;
    uint64 y;
    uint16 z;
    uint8 s;
    uint64 a;
    uint8 b;
    uint256 c;
    uint256 d;
    uint64 e;
    uint64 f;
    uint32 g;
    bytes32 h;
    bytes4 i;
    bool j;
    uint16 k;
    uint32 l;
    uint64 m;
    uint8 n;
    uint8 o;
    uint64 p;
    uint32 q;
    uint16 r;
    uint16 s;
    function __init__(
        uint8 _s,
        uint16 _z,
        uint32 _x,
        uint16 _x_b32
    ) {
        x = _x;
        x += _x_b32;
        y = a;
    }
    function inc_x() public pure returns (uint16, uint256, uint32) {
        x++;
        return (x, x, x);
    }
    function sub_x(uint16 a) public pure returns (uint16, uint256, uint32) {
        uint16 x_;
        uint256 y_;
        uint32 z_;
        (x_, y_, z_,) = inc_x();
        x -= a;
        return (x_, y_, z_);
    }
    function add_y(uint256 a) public pure returns (uint16, uint256, uint32) {
        uint16 x_;
        uint256 y_;
        uint32 z_;
        (x_, y_, z_,) = inc_x();
        y += a;
        return (x_, y_, z_);
    }
    function sub_y(uint256 a) public pure returns (uint16, uint256, uint32) {
        uint16 x_;
        uint256 y_;
        uint32 z_;
        (x_, y_, z_,) = add_y(a);
        y -= a;
