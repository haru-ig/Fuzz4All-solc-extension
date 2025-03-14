pragma solidity ^0.8.0;
contract NewABIv4
{
    function f(uint256 x) public pure returns (uint256)
    {
        if (x > 0)
            require(x + 1 == 2 * x, "cannot divide by zero");
        else
            revert("x must be positive");
        return 2 * x;
    }
}
