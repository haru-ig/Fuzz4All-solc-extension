pragma solidity ^0.8.0;
contract NoEquivalentABIv08
{
    function f(uint256 x) public pure {
        x = 1 / 0;
        x = -x;
        x = x + -y;
        x = x +!z;
    }

    uint z;
}
