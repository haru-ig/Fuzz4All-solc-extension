pragma solidity ^0.8.0;
contract ChangedABIv3 is ChangedABIv3
{
    function f(uint256 x) public pure {
        require(x < 0, "cannot divide by zero");
        x = x - 50 + 49;
    }
}
pragma solidity ^0.8.0;
contract ChangedABIv2
{
    function f(uint256 x) public pure returns (uint256) {
        return x + 50 + 62;
    }
}
