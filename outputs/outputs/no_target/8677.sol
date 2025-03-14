pragma solidity ^0.8.0;
contract ChangedABIv3
{
    function f(uint256 x) public pure returns (uint256) {
        require(x > 0, "cannot divide by zero");
        return x - 50 + 49;
    }
}
