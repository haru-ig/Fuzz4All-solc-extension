pragma solidity ^0.8.0;
contract Caller2
{
    uint x;
    function fallback() public {
        x += 1;
    }
}
