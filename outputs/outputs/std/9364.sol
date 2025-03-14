pragma solidity ^0.8.0;
contract Mutate1 is Mutate2
{
    function mutateX (uint256 x, uint256 _y, uint256 z) public returns (uint256)
    {
        x += 2 ** (2 ** 8);
        x += 2 ** (2 ** 16);
    }
}
