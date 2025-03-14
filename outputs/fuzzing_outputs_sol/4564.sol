pragma solidity ^0.8.0;
contract SemanticDifferent {
    fallback function() external payable {}
    receive () external payable {}
}
contract Caller is SemanticDifferent {
    function mutate() public view {
    }
}
