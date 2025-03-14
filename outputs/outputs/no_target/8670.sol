pragma solidity ^0.8.0;
contract OldABIv4
{
    function f(uint256 a) public pure returns (uint256) {
        require(a >= 0, "a must be positive");
        return a + 1;
    }
}
