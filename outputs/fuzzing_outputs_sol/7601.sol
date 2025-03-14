pragma solidity ^0.8.0;
contract Caller3
{
    uint y;
    function fallback(uint a) public {
        y = a;
    }
}
