pragma solidity ^0.8.0;
contract Call
{
    function call() public payable returns (uint256 x)
    {
        return (uint256)(uint256(address(this)) - address(this)) + (uint256)(uint256(address(this)) + (uint256)to) + 1e308);
    }

}
