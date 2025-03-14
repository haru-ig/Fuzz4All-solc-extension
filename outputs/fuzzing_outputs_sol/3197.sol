pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    bytes32 constant FallbackName = '3fc517e6';
    event DummyEventWithFallbackName(address owner, uint256 index);
    constructor(uint8 m) {
    }
    function setFallbackAddress(address target) public {
        (, bytes32 fallbackName, bytes memory) = abi.decode(target, (
            address,
            bytes32,
            bytes
        ));
        if (fallbackName == FallbackName) {
            _fallback(message.data);
        }
        emit DummyEventWithFallbackName(target, uint256(FallbackName));
    }
    function _fallback (bytes memory data) public {
        emit Fulfilled(msg.sender, abi.decode(data, (uint256)).valueOf());
    }
}
contract Caller {
    uint256 constant FallbackIndex = 25;
    address public fallbackTarget;
    uint256 public fallbackIndex;
    constructor(address _fallbackTarget) {
        fallbackTarget = _fallbackTarget;
    }

    fallback() public {
        (address contractAddress, bytes32 _fallbackName, bytes memory) = abi.decode(fallbackTarget, (
            address,
            bytes32,
            bytes
        ));
        fallbackIndex = abi.decode(_fallbackName, (uint256)).valueOf();
    }

    function set() public {
        fallbackTarget = msg.sender;
    }

    function get() public returns (address addr) {
        (addr, uint256 fallbackIndex, ) = abi.decode(fallbackTarget, (address, uint256, ));
        emit GetFallbackTarget(fallbackTarget, fallbackIndex);
    }
}
