pragma solidity ^0.8.0;
contract Example
{
    function add(uint _x) public pure returns (uint)
    {
        if (_x == 0) return 0;
        return _x + 2;
    }
    function sub(uint _x) public pure returns (bool success)
    {
        if (_x > 2) return true;
        return _x - 2;
    }
}
