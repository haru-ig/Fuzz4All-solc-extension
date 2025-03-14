pragma solidity ^0.8.0;
contract Test5 {
    event LogUint8Array(uint8[] memory v);
    uint8[] storageData;
    function MutateData() public {
        storageData = new uint8[](0);
        for (uint256 i = 0; i < 100; i++) {
            storageData[i+1] = uint8(i);
        }
        emit logUint8Array(storageData);
    }
    function logUint8Array(uint8[] calldata v) public {
        revert("Should not be called");
    }
}
