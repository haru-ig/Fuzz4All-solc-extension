pragma solidity ^0.8.0;
contract SemanticsEquivalence2 is SemanticsEquivalence
{
    function semanticEquivalence() public pure { revert(); }
}

pragma solidity ^0.8.0;
contract EIP712
{
    function signTypedData(bytes32 salt, bytes memory data) public pure { revert(); }
}
