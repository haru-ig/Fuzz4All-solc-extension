pragma solidity ^0.8.0;
contract Facade {
    mapping(uint256 => uint256) public valueMap;
    mapping(address => uint256[]) public personAddressMap;
    mapping(uint128 => uint256[]) public long2AddressMap;
    function setValueByAddresses(address address) public {
        personAddressMap[address].push(valueMap[uint256(address)]);
    }
    function setLong2ArrayByAddresses(address address, uint256[] memory long2Array) public {
        long2AddressMap[address][(uint128)address].push(long2Array[uint256(address)]);
    }
}
