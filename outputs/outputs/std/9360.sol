pragma solidity ^0.8.0;
contract Mutate2
{
    address _account;

    function mutateX (uint256 x, uint256 _y, uint256 z) public returns (uint256)
    {
        x += 1;
        x = x * 2;
        x += _y;
        x -= z;
        x = x % 256;
        x += x % 256 * 256;
        x = x + x + x + x + x + x + x + 1;
        x += x + x + x + 256;
    }
}
