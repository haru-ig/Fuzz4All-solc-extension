pragma solidity ^0.8.0;
contract ChangedABIv2
{
    function f(uint256 x) public pure {
        require(x > 0, "cannot divide by zero");
        x = x - 10 + x;
        x += 10;
        x -= 10.0;
    }
}
