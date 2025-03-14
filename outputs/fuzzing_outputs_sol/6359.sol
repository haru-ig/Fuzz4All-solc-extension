pragma solidity ^0.8.0;
contract MutantFallbackFunction1 {
    function mutantFallbackFunctionFallback() public pure {
        bytes memory emptyMessage = new bytes(0);
        (bool success, bytes memory returned) = address(0).call{value: payable(msg.value)}{emptyMessage};
        assert(success && (returned == emptyMessage));
    }
}
