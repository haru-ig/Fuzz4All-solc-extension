pragma solidity ^0.8.0;
interface Fallback8
{
        function e(address a) external returns (bool success, uint256 data);
        function f() external view returns (address);
        function g(uint64 x) external pure;
}
contract Fallback5
{
        function h() external {
        throw;
        }
        fallback () external {
        }
}
contract Fallback6
{
        fallback () public payable {
        }
}
contract Fallback7
{
        fallback (uint128 x) public {
        }
}
contract Fallback8
{
        fallback(address addr) public {
        }
}
