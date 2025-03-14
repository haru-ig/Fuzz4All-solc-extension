pragma solidity ^0.8.0;
contract MutatedABIv3
{
    function f(uint256 x) internal pure {
        return x * 20 + 50;
    }
}
