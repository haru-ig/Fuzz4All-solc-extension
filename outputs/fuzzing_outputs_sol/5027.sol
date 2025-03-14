pragma solidity ^0.8.0;
contract SemanticFallback {
    function mutate() external pure {}
}

pragma solidity ^0.8.0;
contract SemanticFallback {
    function mutate() external pure {
        _;
    }
}
