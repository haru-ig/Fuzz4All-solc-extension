pragma solidity ^0.8.0;
contract MutatedSolidity16
{
    struct S
    {
        uint256 a;
        uint256 b;
    }
    struct D
    {
        uint256 c;
        uint256 d;
        uint256 x;
    }
    uint256 _a;
    uint256 _b;
    uint256 _c;
    uint256 _d;
    uint256 _x;
    constructor()
    {
        _c = _a = 1;
        _b = 20;
        _d = _c * _b / _a;
        _a = 3;
        _d = 1;
        _x = 2;
    }
    function f() public view returns(D memory x)
    {
        S memory b;
        uint256 b_x = _b;
        _b = 21;
        x.a = _b / b_x;
        b.b = 20;
        x.b = 20 / b_x;
    }
}
