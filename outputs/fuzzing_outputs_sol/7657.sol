pragma solidity ^0.8.0;
contract ClarifiedSemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    function fallback() public { }
    receive() public payable { }
}
