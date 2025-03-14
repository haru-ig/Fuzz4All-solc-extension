pragma solidity ^0.8.0;
contract Mutate2
{
    address _account;
    function mutateY (uint256 y, uint256 _x, uint256 z) public returns (uint256)
    {
        _x += 1;
        _x *= 2;
        _x += y;
        _x -= z;
        _x = _x % 256;
        _x += _x % 256 * 256;
        _x = _x +  _x +  256 + _x + 256 * _x + _x * _x;
        _x +=  _x + _x + _x + 256 + _x + _x + _x * _x + _x * 256;
        _x += _x * 256 * 256;
        _x +=  _x * 256;
        _x += 256 + _x + 256 +  _x + _x + _x * _x +  _x * 256;
    }

}
