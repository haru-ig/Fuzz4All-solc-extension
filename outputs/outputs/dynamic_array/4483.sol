pragma solidity ^0.8.0;
contract SolidityUpgradeableMock { function testPrevious() public returns (bytes memory) {
} }
address[100] private _storage;
constructor Test() public {
    for(uint256 slot=0; slot < 100; ++slot) _storage[slot] = uint128(slot);
}
function testMutated(SolidityUpgradeableMock mock) public {
    bytes memory encoded = abi.encodeWithSignature("testPrevious()");
    mock.testPrevious.value(1)();
    mock.call(encoded, 0);
}
function setInvalid() public {
    for(uint256 slot=0; slot < 100; ++slot) _storage[slot] = uint128(slot);
    for(uint256 slot=0; slot < 100; ++slot) _storage[slot] = uint128(slot);
    setInvalidSlotSlot(slot);
}
function setInvalidSlotSlot(uint256 slot) public {
    for(uint256 i=0; i < slot; ++i) _storage[slot - i] = uint128(slot - i);
    for(uint256 i=0; i < slot; ++i) _storage[slot + i] = uint128(slot + i);
 }
}
