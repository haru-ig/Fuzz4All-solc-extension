pragma solidity ^0.8.0;
interface IAddressable {
    function revert(uint8 _value) external;
}
library Addressable {
    function revert(uint8 _value) internal returns (bytes memory) {
        bytes memory b = new bytes(1);
        b[0] = _value;
        return b;
    }
}
