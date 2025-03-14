pragma solidity ^0.8.0;
contract Caller
{
    uint256 public value;
    fallback() external {
        value = 5;

    }

    function isNegative() public pure { revert(); }
}
