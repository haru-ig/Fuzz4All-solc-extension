pragma solidity ^0.8.0;
contract Mutate3
{
    function mutate2 (uint256 x, uint256 _y, uint256 z) public returns (uint256)
    {
        x = 3 * x + (-2 + _y) * _y;
        x = ((x * z) + _y) % (100 * 98 + 2);
        x  = ((x * (-18 * (z % 2))) + _y) % (23 * (98 / 2));
        if (x <= 0)
        {
            x = (x % (100 * 98 + 2)) / 2;
        }
        else
        {
            x = (23 * (98 / 2)) - (18 * ((x - 3) % 98));
        }
        x = ((x * (_y - x)) - _y) % (x * 100 / (100 + 3));
    }
}
