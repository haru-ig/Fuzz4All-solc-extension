pragma solidity ^0.8.0;
contract CallerExample21Fallback {
    mapping (address => uint) knownAddresses;
    function getAddress(string memory name, uint i) public view returns(address){
        bytes32 address_bytes32 = bytes32(keccak256(abi.encodePacked(i)));
        bytes32 name_bytes32 = bytes32(keccak256(abi.encodePacked(name)));
        address _address = bytes32(map_data[address_bytes32]);
        if (knownAddresses[address_bytes32]!= 0) return knownAddresses[address_bytes32];
        uint result;
        assembly {
            result := mload(add(knownAddresses, mul(i, 0x20)))
        }
        uint _result = _address.add(knownAddresses[address_bytes32]);
        return knownAddresses[address_bytes32] = _result;
    }
    function fallback(uint i) public{
        getAddress("name", i);
    }
}
