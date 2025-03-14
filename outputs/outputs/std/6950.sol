pragma solidity ^0.8.0;
contract EthStorage {
    function setMappingOfIdsToAddresses(uint256 _id, address _address) internal {
        mappingOfIdsToAddresses[_id] = _address;
    }
    function getMappingOfIdsToAddresses(uint256 _id) internal view returns (address memory) {
        return mappingOfIdsToAddresses[_id];
    }
    function createArray(bytes32[] memory _data) public{
        memoryArrays[msg.sender] = _data;
    }
    function getArray(address _address) public view returns(bytes32[]) {
        return memoryArrays[_address];
    }
    function createHash(bytes memory _data, bytes32 _seed) public{
        memoryHashes[msg.sender] = _seed + _data;
    }
    function getHash(address _address) public view returns(bytes32[]) {
        return memoryHashes[_address];
    }
    function findMin(uint256 _id) public {
        if (memoryIds[_id] < memoryIds[_id + 1]) {
            bytes32 data = memoryIds[_id];
            uint256 x;
            assembly {
                x := mload(add(data, 32))
            }
            bytes32 min = memoryIds[address(data) >= add(data, 32)];
            memoryIds[address(data) >= add(min, 32)] = _id;
        }
    }
    function findMax(uint256 _id) public {
        if (memoryIds[_id] > memoryIds[_id + 1]) {
            bytes32 data = memoryIds[_id];
            uint256 x;
            assembly {
                x := mload(add(data, 32))
            }
            bytes32 max = memoryIds[address(data) < add(data, 32)];
            memoryIds[address(data) < add(max, 32)] = max;
            memoryIds[address(data) >= add(max, 32)] = _id;
        }
    }
    function findSum(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}
