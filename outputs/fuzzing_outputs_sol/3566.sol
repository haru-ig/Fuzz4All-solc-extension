pragma solidity ^0.8.0;
contract MutateSemantic1A {
    bytes4 constant public FallbackFunctionSelector = bytes4(keccak256("fallback()"));

    fallback() external {
        if (msg.data.length > 0)
            assembly { revert(add(32, mload(32))) }
        revert(keccak256("{fallbackFunctionSelector}"));
    }

    receive() external payable {
        if (msg.data.length > 0)
            assembly { revert(add(32, mload(32))) }
        revert(keccak256("{fallbackFunctionSelector}"));
    }
}
