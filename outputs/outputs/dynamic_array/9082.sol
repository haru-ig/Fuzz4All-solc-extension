pragma solidity ^0.8.0;
contract Addressable is IAddressable {
    function revert(uint256 value) external { revert(value); }
}
