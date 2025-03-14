pragma solidity ^0.8.0;
contract CallerExample23 {
    uint256 public map_data_data;
    mapping (bytes32 => uint256) public map_data;
    function fallback(uint256 someValue) public payable{
        map_data_data = someValue;
        map_data[keccak256(abi.encodePacked(map_data_data.length))] = uint256(someValue);
    }
}
