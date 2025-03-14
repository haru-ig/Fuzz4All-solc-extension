pragma solidity ^0.8.0;
contract Fallback4
{
        function c() public payable returns (uint256 memory data)
        {
        }
        fallback () external payable {}
}

contract Fallback5
{
        function e() public payable {}
        receive () external payable { emit Fail("receives Ether"); }
}
