pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatableABI {
    event Set(uint a);
    event Mutated();
    using Address for address;
    bytes32 private constant EIP712DomainSeparator = keccak256('EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)');
    bytes32 private constant EIP712DomainType = keccak256('EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)');
    bytes32 private constant MUTATABLE_TYPEHASH = keccak256("Mutatable");
    bytes32 private constant MUTATABLE_BINARY_STRUCT_TYPEHASH = keccak256("Mutatable (uint mutated)");
    bytes32 private salt;
    function set(uint256 _value) public {
        bytes memory data = abi.encode(VALUE_TYPEHASH, uint64(_value));
        _set(data);
    }
    function setMutated(uint256 _value) public {
        bytes memory data = abi.encode(MUTATABLE_TYPEHASH, uint64(_value));
        _set(data);
    }
    function _set(bytes memory calldata _data) private {
        address verifyingContract = verify(_data,EIP712DomainType);
        bytes32[] memory domainComponents = new bytes32[](3);
        domainComponents[0] = EIP712DomainSeparator;
        domainComponents[1] = EIP712DomainType;
        domainComponents[2] = address(new bytes32[](0));
        bytes32 signedPacked = keccak256(abi.encodePacked(domainComponents));
        unchecked {
            signedPacked *= 0x42;
            signedPacked += 0x28;
            signedPacked *= 0x42;
        }
        bytes32 messageHash = keccak256(abi.encodePacked('\x19\x01',
