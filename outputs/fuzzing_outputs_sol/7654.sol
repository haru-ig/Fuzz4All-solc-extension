pragma solidity ^0.8.0;
contract SemanticEquality
{
    address public immutable addrA;
    address public immutable addrB;
    constructor(address _addrA, address _addrB)
    {
        addrA = _addrA;
        addrB = _addrB;
    }
    function fallback () public payable { address(addrA).transfer(payable(msg.sender).balance); }
    receive () external { }
}

pragma solidity ^0.8.0;
contract NewSemanticEquality
{
    address public immutable addrA;
    address public immutable addrB;
    constructor(address _addrA, address _addrB)
    {
        addrA = _addrA;
        addrB = _addrB;
    }
    modifier onlyCaller() {
        require(msg.sender == addrA || msg.sender == addrB);
        _;
    }
    function fallback () public payable onlyCaller { address(addrA).transfer(payable(msg.sender).balance); }
    receive () external { }
}
