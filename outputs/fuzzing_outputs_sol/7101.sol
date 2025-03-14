pragma solidity ^0.8.0;
contract MutatedCallerMutator {
    bool hasFallback;
    address fallbackOwner;
    bool fallbackCalled;
    bool isFallback;

    constructor(address payable _newAddress)
    {
        fallbackOwner = msg.sender;
        isFallback = true;
        if (_newAddress!= address(0)) {
            fallbackOwner = _newAddress;
        }
    }
    function test() public {
        hasFallback = true;
    }
    function fallback() public payable {
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        (v, r, s, acc) = abi.decode(msg.data, (uint256, bytes32, bytes32, uint8[]));
        fallbackCalled = true;
    }
    function callWithFallback() public {
        if (isFallback) {
            fallbackCalled = true;
            fallbackOwner.call{value: msg.value }{ value: msg.value}("");
        } else {
        msg.sender.call{value: msg.value }{ value: msg.value}("");
        }
    }
    function testFallback() public {
        hasFallback = true;
    }
}
