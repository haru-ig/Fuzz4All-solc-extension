pragma solidity ^0.8.0;
contract MutatedValueWithFallback2 {
    address public value2;
    bool private hasFallback;
    constructor(address _caller) {
        hasFallback = _caller == address(this);
        value2 = _caller;
    }
    function example1(address _fallback) public {
        address lastCaller = _fallback;
        if (!hasFallback) {
            lastCaller = this;
        }
        _fallback.delegatecall(abi.encodeWithSignature("example3()"));
        bytes memory data = abi.encodeWithSignature("example3()");
        lastCaller.call.value(value)(data);
    }
}
contract MutatedValueWithFallback3 {
    address public value3;
    bool private hasFallback;
    constructor(address _caller) {
        hasFallback = _caller == address(this);
        value3 = _caller;
    }
    function example2() public payable {
        if (!hasFallback) {
            value3 = address(this);
        }
        value2.delegatecall(abi.encodeWithSignature("example1(address)",address(this)));
    }
}
