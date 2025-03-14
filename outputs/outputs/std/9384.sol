pragma solidity ^0.8.0;
contract Mutate6
{
    address _account;
    function mutateB(uint256 a, uint256 b, uint256 _x) public returns(uint256)
    {
        _x += a;
        _x += a;
        b += 1;
        b += 2;
        _x -= b;
        _x -= b;
        return _x;
    }
}
