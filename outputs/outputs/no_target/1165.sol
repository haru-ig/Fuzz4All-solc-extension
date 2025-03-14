pragma solidity ^0.8.0;
contract SemanticMutation25
{
function semanticMutation25(uint256[] memory a) public pure {
    a = -1;
    a[1] = 1e22;
}
}
