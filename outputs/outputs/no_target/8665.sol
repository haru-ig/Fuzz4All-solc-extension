pragma solidity ^0.8.0;
contract NewABIv3
{
    function f(uint256 x) public pure returns (uint256)
    {
        if (x > 0) {
            return x.add(1);
        } else {
            revert("DivByZero");
        }
    }
}
