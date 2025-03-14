pragma solidity ^0.8.0;
interface Fallback6
{
        function a(uint64 x) external payable;
        function b(uint64 x) public;
}



contract Test2 is Fallback6
{
        function a(uint64 x) external payable
        {
        }

        function b(uint64 x) public
        {
        }
}


contract Test3 is Fallback6
{
        receive() external payable
        {
        }

        function a(uint64 x) external payable
        {
        }

        function b(uint64 x) public
        {
        }
}

contract Test4
{
        function a(uint64 x) external
        {
        }
}
