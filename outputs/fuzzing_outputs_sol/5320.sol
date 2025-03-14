pragma solidity ^0.8.0;
contract Mutated
{
        uint64 x;
        function a() public
        {
                x = 1;
        }
        function b() public { x = 2; }
        function c() public { x = 3; }
}

pragma solidity ^0.8.0;
contract Complex
{
        uint64 x;
        function a() public
        {
                x = 1;
        }
        function b() public
        {
                x = 2;
        }
        function c() public
        {
                x = 3;
        }
        function d() public
        {
                x = 4;
        }

        function e() public
        {
                x = 5;
        }
        function call(address x) public
        {
                x.e();
        }
}
