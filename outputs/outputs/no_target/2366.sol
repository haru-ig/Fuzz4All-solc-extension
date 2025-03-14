pragma solidity ^0.8.0;
contract mutationv56965
{
    function f() public pure
    {
    }
}

library Math {

    function sign(int256 x) internal pure returns (int256)
    {
        if (x == int256(0)) {
            return 0;
        }
        uint256 z = int256(-(x >> 63));
        return (z & 1) ^ (z >> 1);
    }
}
