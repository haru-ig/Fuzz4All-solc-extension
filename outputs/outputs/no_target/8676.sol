pragma solidity ^0.8.0;
contract ChangedABI7
{
    function f() public pure returns (uint256) {
        require(x > 0, "cannot divide by zero");
        return x + 100;
    }
}
