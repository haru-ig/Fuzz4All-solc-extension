pragma solidity ^0.8.0;
contract MMutate1
{
    uint256 _x;
    uint256 _y;
    uint256 z = 100;
    function MMutate1(uint256 _x, uint256 _y) public
    {
        _x += 1;
        _x = _x * 2;
        _x += _y;
        _x -= z;
        _x = _x % 256;
        _x += _x % 256 * 256;
        _x = _x + x + x + x + x + x + x + 1;
        _x += _x + x + _x + x + 256;
    }
    function setX(uint256 x) public
    {
        _x = x;
    }
    function getX() public view returns (uint256)
    {
        return _x;
    }
}
