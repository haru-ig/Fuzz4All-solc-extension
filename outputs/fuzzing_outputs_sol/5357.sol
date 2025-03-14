pragma solidity ^0.8.0;
interface iface
{
        function f() external;
        function g() external;
        function h() external;
        function i() external;
        fallback function ff() public payable;
}
