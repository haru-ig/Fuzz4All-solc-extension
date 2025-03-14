pragma solidity ^0.8.0;
contract SimpleMutantSemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    modifier onlyCaller() {
        if(msg.sender == addr) _;
    }
    fallback () external payable onlyCaller { }
    receive () external payable onlyCaller {
        selfdestruct(address(this).balance);
    }
}

pragma solidity ^0.8.0;
contract Caller
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }

    fallback () external payable {



        receive();
    }
}
