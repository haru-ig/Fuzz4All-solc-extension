pragma solidity ^0.8.0;
contract MutatedInjection
{
bytes32 public constant ADDRESS_REGKEY_FIELD =keccak256("addressOf");
bytes32 private constant MNEMONIC_FIELD =keccak256("mneumannAddress");
bytes32 private constant HASH_FIELD =keccak256("hashOf");
mapping (bytes32 => mapping (bytes32 => bool)) public mappingAddressIsMutatedWith ;
address public addressA;
address public addressB;
address public addressC;
constructor () { addressA = MsgSender(); }
    mutatedInjection(bytes32[2] memory values) public returns(address[] memory array, address, address) {
        address[] memory array = new address[](3);
        mappingAddressIsMutatedWith[ADDRESS_REGKEY_FIELD].put(keccak256(abi.encode(a,b)),0);
        mappingAddressIsMutatedWith[MNEMONIC_FIELD].put(keccak256(abi.encode(a,b,c)),1);
        mappingAddressIsMutatedWith[HASH_FIELD].put(values[0],mappingAddressIsMutatedWith[HASH_FIELD].get(values[0])+1);

        array[0] = a;
        array[1] = b;
        array[2] = c;

    }
}
