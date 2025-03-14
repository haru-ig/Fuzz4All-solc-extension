pragma solidity ^0.8.0;
contract Caller
{
    uint x;
    function fallback() public payable {
        x += 1;
    }
}
