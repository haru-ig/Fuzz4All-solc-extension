pragma solidity ^0.8.0;
contract SemanticMutation3
{
    uint8[256] private bytes1;

    function semanticMutation3() public {
    	bytes1 = new uint8[](3);
    }
}
