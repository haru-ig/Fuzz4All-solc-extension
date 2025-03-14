pragma solidity ^0.8.0;
contract Caller6 is Fallback6
{
        function c(uint64 x) external
        {
                x++;
        }
}
contract Caller8 is Caller6
{
        address x;
        constructor (uint64) public
        {
                uint64 x = 1;
                a(x);
                c(x);
        }
        receive () payable {
                x = msg.value;
                b(msg.sender);
        }
}
