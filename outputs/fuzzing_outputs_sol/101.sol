pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionMut {
    constructor() { }
    fallback() external payable {}
    function getData(uint k) public returns (uint256 x) {
        x = 2;
        x = x;
    }
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionMut2 {
    constructor() { }
    fallback() external payable {}
    function getData(uint k) public returns (uintx x) {
        x = 2;
        x = x;
    }
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionMut3 {
    constructor() { }
    fallback() external payable {}
    function getData(uint k) public returns (uint x) {
        x = 2;
        x = x;
    }
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionMut4 {
    constructor() { }
    fallback() payable {}
    function getData(uint k) public returns (uint x) {
        x = 2;
        x = x;
    }
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionMut5 {
    constructor() { }
    fallback() external {}
    function getData(uint k) public returns (uintx x) {
        x = 2;
        x = x;
    }
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionMut6 {
    constructor() { }
    fallback() external {}
    function getData(uint k) public returns (uint x) {
        x = 2;
        x = x;
    }
}
