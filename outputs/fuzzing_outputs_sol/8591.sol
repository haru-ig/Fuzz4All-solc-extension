pragma solidity ^0.8.0;
contract CallerExample2 {
    uint[] public map_data_data;
    mapping (bytes32 => uint) map_data;
    uint test;
    function fallback() public payable{
        map_data_data.push(uint(msg.value));
        test = map_data[keccak256(abi.encodePacked(map_data_data.length))];
    }
}
