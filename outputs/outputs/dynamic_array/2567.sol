pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations13
{
    uint128[] public a;
    address payable minter;
    constructor () public {
        minter = msg.sender;
        minter.transfer(address(this).balance);
        minter.transfer(address(this).balance);
    }
}
library SemanticEquality_ArrayMutations14 {
    function assert(
        bool assertion,
        string memory errorMessage
    ) internal pure {
        require(assertion, errorMessage);
    }
}
