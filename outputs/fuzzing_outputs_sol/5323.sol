pragma solidity ^0.8.0;

contract Caller6 is Fallback6
{
        function c(uint64 x) public {
            c2(x+0x100);
        }

        function b(address x) public {
            c2(x);
        }
}

contract Caller6C is Fallback6
{
        constructor()
        {
                c2(0);
        }
}

contract D
{
        function d(uint _x) public pure { }
}

contract Caller6D is D, Fallback6
{
        function d(uint _x) public { }
        receive() external payable { }
}
