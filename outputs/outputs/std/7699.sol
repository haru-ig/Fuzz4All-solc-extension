pragma solidity ^0.8.0;
contract EquivalentMutated32 {
    uint8[32] memory memoryData;
      uint[] memory arrayOfInts;
    uint256[] memory arrayOfUint;
    mapping(address => int) testMapping;
    mapping(address => address) testMapping2;
    uint[] memory array_length;
    uint[32] memory tempStorage;
    address[32] memory testAddress;
    function getMapping(address from) public view returns (int) {
    return int(testMapping[from]);
    }
    function setMapping(address from, int to) public {
    testMapping[from] = to;
    }
    function getMap(address fromOrAddress, uint index) public view returns (address) {
    return testMapping2[fromOrAddress];
    }
    function setMap(address fromOrAddress, uint index, address to) public {
    testMapping2[fromOrAddress] = to;
    }
    function setTestArray(uint[] memoryData2) public {
    array_length = memoryData2;
    }
    function getTest() public view returns (uint[]) {
    return array_length;
    }
    function getTestLength() public view returns (uint) {
    return uint(array_length.length);
    }
    function getData(uint index) public view returns (uint) {
    if (index < uint(array_length.length)) {
    return array_length[index];
    }
    return 0;
    }
}
