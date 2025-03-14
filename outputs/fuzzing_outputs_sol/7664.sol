pragma solidity ^0.8.0;
contract MutatedSemanticEquivalence
{
    uint256 public x;
    constructor(uint256 _x)
    {
        x = _x;
    }
    function fallback () public payable {
        address self = msg.sender;
        assembly { self := addr }
        assert(x == 100 && msg.value == 0);
        assert(address(self) == addr);
    }
    receive () external payable { }
    function () public view { }
}
