pragma solidity ^0.8.0;
contract SemanticEquivalent1
{
    function semanticContract() public
    {
        bytes memory toSend = "Some data";
        address myContract = msg.sender;
        if (!isApproved(toSend, myContract))
            revert("data doesn't hold the necessary permission.");
    }

    function isApproved(bytes memory x, address x1) public pure returns (bool)
    {
        return false;
    }
}
