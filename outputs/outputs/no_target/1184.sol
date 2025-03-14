pragma solidity ^0.8.0;
contract SemanticMutation1
{
    function semanticMutation(byte[] memory a) public pure {
       a = new byte[](1);
    }
}
