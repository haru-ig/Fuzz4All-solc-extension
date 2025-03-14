pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint  counter;
  fallback() external payable {
    counter += value + value;
    counter += value + value;
    counter--;
  }
}

pragma solidity ^0.8.0;
contract M {
  using Lib for address;
  using Lib for address payable;
  using Lib for bytes;
  using Lib for memory;
  using Lib for uint;
  using Lib for uint256;
  using Lib for bytes;
  using Lib for bytes32;
  bytes32 internal constant EIP712_DOMAIN_TYPEHASH = keccak256('');
  bytes32 internal constant EIP712_DOMAIN_SEPARATOR = keccak256('');
  bytes32 internal constant EIP712_KEYHASH_TYPEHASH = keccak256('');
  bytes32 internal constant EIP712_KEYHASH_TAG =
    keccak256('0x19');
  bytes32 internal constant EIP712_KEYNAME_TYPEHASH = keccak256('');
  bytes32 internal constant EIP712_KEYNAME_TAG =
    keccak256('0x23');
  bytes32 internal constant EIP712_SIGNATURE_TYPEHASH = keccak256('');
  bytes32 internal constant EIP712_SIGNATURE_TAG =
    keccak256('0x35');
  function doSign(bytes32 msgHash, bytes32 _signature, address signerAddress)
    internal
    pure
    returns (bytes32, address)
  {
    bytes32 tempSignature = keccak256(abi.encodePacked('\x19Ethereum Signed Message:\n32', msgHash));

    assembly {
      let ecrecover_slot := 0x40
      let temp := mload(add(tempSignature, 64))
      mstore(sig_slot, temp)
      mstore(add(ecrecover_slot, 0x20), temp)
      mstore(add(ecrecover_slot, 0x40), mload(add(ecrecover_slot, 0x30)))
      mstore(add(ecrecover_slot, 0x60), mload(add(ecrecover_slot, 0x50)))
      mstore(add(ecrecover_slot, 0x80), mload(add(ecrecover_slot, 0x70)))

      mstore(add(ecrecover_slot, 0xb0), mload(add(ec
