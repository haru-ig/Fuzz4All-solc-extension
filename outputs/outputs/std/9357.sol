pragma solidity ^0.8.0;
contract Mutate2
{
    function mutateX (uint256 x, uint256 _y, uint256 z) public returns (uint256)
    {
        x = x + 2;
        x += _y;
        x -= z;
        x += 2 * ((x / 100) - 26);
    }
}
