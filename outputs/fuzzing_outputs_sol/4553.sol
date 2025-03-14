pragma solidity ^0.8.0;
contract SemanticDifferent6 {
    function mutate() public pure {
    }
}

pragma solidity ^0.8.0;
contract SemanticDifferent8 {
    function mutate() public pure {
    }
}
contract SemanticDifferent {
    function fallback() public payable {
        if (msg.value < 2) {
            revert("Something went wrong");
        }
    }
    receive () external payable {
    }
    receive () external {
    }
    receive () external payable {
    }
}
