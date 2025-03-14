pragma solidity ^0.8.0;
contract SemanticMutation
{
    function semanticMutation(uint256[] memory a) public pure {
        a.push(0);
    }
}
contract EmptyCode
{
    function emptyFunction() public pure {
    }
}
