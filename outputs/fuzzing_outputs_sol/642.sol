pragma solidity ^0.8.0;
contract SemanticEquivalentB
{
    function semanticContractA(address myContract, address myContract2) public
    {
        myContract;
    }
}

pragma solidity >=0.5.0;
contract Simple
{
    function fallback() payable {}
}
