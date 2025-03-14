pragma solidity ^0.8.0;
contract MutatedSemanticsMutability {
    uint256 public nonstaticMutability;
    uint256 public staticMutability;
    bytes32 public nonstaticMethod;
    bytes32 public staticMethod;
    uint256 public nonstaticFallback;

    function __MutatedSemanticsMutability() public { }
    constructor() public {
        nonstaticMutability = 77;
        staticMutability = 28;
        nonstaticMethod = "GET";
        staticMethod = "hello";
        nonstaticFallback = 46;
    }
    function test() public view returns (uint256, uint256) {
        return (staticMutability, staticMutability + nonstaticMutability);
    }
    function fallback(uint256 _v) public payable returns (uint256, uint256) {
        value = value + _v;
        method = "set";
        return (nonstaticFallback, nonstaticFallback + nonstaticFallback);
    }
}
