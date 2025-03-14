pragma solidity ^0.8.0;
contract CallerExample23 {
    uint[] public map_data_data;
    mapping (bytes32 => uint) public map_data;
    constructor (uint init_count) public {
        map_data_data.push(init_count);
        map_data[keccak256(abi.encodePacked(map_data_data.length))] = init_count;
    }
    function fallback(uint someValue) public{
        map_data_data.push(uint(someValue));
        map_data[keccak256(abi.encodePacked(map_data_data.length))] = uint(someValue);
    }
}
