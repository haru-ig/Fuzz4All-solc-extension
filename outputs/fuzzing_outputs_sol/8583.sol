pragma solidity ^0.8.0;
contract CallerExample22{
    mapping (bytes32 => uint) public map_data;
    uint[] map_data_data;
    function fallback(uint someValue) public returns (address payable){
        map_data_data.push(uint(someValue));
        map_data[keccak256(abi.encodePacked(map_data_data.length))] = uint(someValue);
        return msg.sender;
    }
}
