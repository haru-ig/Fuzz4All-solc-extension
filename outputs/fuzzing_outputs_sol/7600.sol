pragma solidity ^0.8.0;
contract Caller4
{
    uint x;
    function fallback() public payable {
        x += 1;
    }
}
