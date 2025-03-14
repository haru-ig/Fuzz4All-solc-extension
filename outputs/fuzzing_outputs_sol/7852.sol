pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticEquivalentFallbackExample {
    bytes32 public constant FUNCTION_NAME = "fallback";
    bytes4 constant FUNCTION_SIG = bytes4(keccak256(abi.encode(string('fallback()'))));
    function fallback() external payable {}
}
