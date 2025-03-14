pragma solidity ^0.8.0;
contract MutatedSemanticEquivalence_2
{
    uint public immutable foo;
    uint internal fooInternal;
    function mutatedSemanticEquivalence () public payable { }
    receive () external payable { }
}

pragma solidity ^0.8.0;

contract MutatedSemanticEquivalence1
{
    uint public immutable foo;
    uint internal fooInternal;

    address public addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    function fallback () public payable { }
    receive () external payable { }

    fallback (uint a, uint b) public {
        require(a.sub(b) > 1);
    }
}
