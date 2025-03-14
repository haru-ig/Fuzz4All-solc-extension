pragma solidity ^0.8.0;
contract SemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    receive () public payable { }

    function fallback () public payable { }
}


pragma solidity ^0.8.0;
contract Caller
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    function call () public {
        addr.call.value(1 ether)();
    }
}
