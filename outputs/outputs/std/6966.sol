pragma solidity ^0.8.0;

contract SolidityArrayContract {
    uint internal constant _ARRAY_MAX_SIZE = 100;

    uint internal _arraySize;


    function getAddressFromStorage(uint256 index, bytes32 _memoryHash, uint256 _memoryId)
        public
    {
        address memoryAddress = address(address(uintValue));
        address memoryAddressInHash = memoryHashes[_memoryHash](_memoryId);
        require(address(this).balance == (address(memoryAddressInHash).balance + address(uintValue).balance), "Address balance error");
        require(address(this).balance == (address(memoryAddress).balance + address(uintValue).balance), "Address balance error");

        memoryArrays[_ARRAY_MAX_SIZE + index] = memoryAddress;
        memoryMappingOfIdsToAddresses[uintArraySize()] = _ARRAY_MAX_SIZE + index;
    }
}
