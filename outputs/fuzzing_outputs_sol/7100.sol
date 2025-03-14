pragma solidity ^0.8.0;
contract MutatedCallerMutator {
    bool hasFallback;
    bool hasReceive;
    uint _v;
    bytes32 _r;
    bytes32 _s;
    uint8[] memory _acc;
    event Happened(bool success);

    function test() public {
        hasFallback = true;
        hasReceive = true;
        _v = 1;
        _r = _r + "2";
        _s = _s + "3";
        _acc = _acc.concat("4");
        Happened(true);
    }
    function testFallback() public {
        hasFallback = true;
        Happened(true);
    }
    function testReceive() public {
        hasReceive = true;
        uint256 value;
        (value) = abi.decode(msg.data, (uint256));
        Happened(false);
    }
    function testFallbackReceive() public {
        hasFallback = true;
        hasReceive = true;
        uint256 value;
        (value) = abi.decode(msg.data, (uint256));
        Happened(false);
    }

    function testCall() public returns (uint256) {
        uint value;
        value = uint(_v);
    }
    function testFallbackCall() public returns (uint256) {
        uint value;
        value = uint(_v);
    }
    function testFallbackMultiCall() public returns (uint256, uint256) {
        uint256 v1, v2;
        (v1, v2) = abi.decode(msg.data, (uint256, uint256));
    }
    function testFallbackMultiCall2() public returns (uint256, uint256) {
        uint256 v1, v2;
        (v1, v2) = abi.decode(msg.data, (uint256, uint256));
    }
    function testFallbackMultiCall3() public returns (uint256, uint256, uint256) {
        uint256 v1, v2, v3;
        (v1, v2, v3) = abi.decode(msg.data, (uint256, uint256, uint256));
    }
    function testFallbackMultiCall4() public returns (uint256, uint256, uint256, uint256) {
        uint256 v1, v2, v3, v4;
        (v1, v2, v
