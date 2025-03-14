pragma solidity ^0.8.0;
contract Caller {
    function lowLevelExample(address payable _addr, uint _amount) public {
        SemanticMutationsExample2(_addr).semanticMutatedExample.value(_amount)("");
    }
    function lowLevelExampleWithStorage(address payable _addr, uint _amount) public {

        address storage smartContractContractAddress = address(0x0);
        uint storage smartContractAddressMemoryAddress = 0x0;
        uint storage smartContractStorageValue = 0x0;
        uint storage smartContractStoreAddress = 0x0;
        address storage smartContractStoreAddressValue = 0x0;
        uint storage smartContractStoreTypeValue = 0x0;
        uint memory smartContractMemoryAddressValue = 0x0;
        uint memory smartContractVariableMemoryAddress = 0x0;
        uint storage smartContractVariableStorageValue = 0x0;
        uint constant smartContractConstantValue = 0x0;
        uint8 constant smartContractConstantValue2 = 0x0;
        address payable smartContractAddressTypecast = address(0x0);
        uint8 constant smartContractEnumType castedValue = uint8(0x0);
        bytes32 constant smartContractBytes32;
        mapping (address => uint256) smartContractMapping;
        mapping (uint => uint) smartContractMapping2;
        uint[] memory smartContractArray;
        uint[3] memory smartContractVariableArray;

        _addr.call{value: _amount}("");
    }
}
