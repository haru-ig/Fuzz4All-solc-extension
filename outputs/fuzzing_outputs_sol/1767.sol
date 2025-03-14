pragma solidity ^0.8.0;
contract TestFallbackSemanticallyEqual {
    bytes public data;
    constructor() {
        data.length;
    }
    function callWithFallback2( bytes calldata ) public returns (bytes memory) {}
}
