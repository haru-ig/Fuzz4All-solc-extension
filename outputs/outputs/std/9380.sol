pragma solidity ^0.8.0;
contract Mutate7
{
    function mutateB(uint256 a, uint256 _x, uint256 b, uint256 _y) public returns(uint256)
    {
        _x *= 100;
        _x += a;
        _x += b;
        _y *= 256;
        _y += a;
        return 0;
    }
}
