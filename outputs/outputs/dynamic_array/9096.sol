pragma solidity ^0.8.0;
interface IAddressable {
  function revert(uint256 _value) external;
}
contract Addressable {
  function revert(uint256 _value) public pure {
    IAddressable(0x18f6b0Bda52A2A65Ab7E59CB169e5F29c80ac46e).revert(_value);
  }
}
