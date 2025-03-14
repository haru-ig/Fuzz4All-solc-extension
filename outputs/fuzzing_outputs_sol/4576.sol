pragma solidity ^0.8.0;
contract SemanticInvalidFallback {
    function mutate2() public invalid_modifier_name() {
    }
}
contract SemanticInvalidFallback2 {
    function mutate2() public invalid_modifier_name() {
    }
}
contract NonRevertFallback {
    function mutate() public {
        revert("invalid fallback");
    }
}
