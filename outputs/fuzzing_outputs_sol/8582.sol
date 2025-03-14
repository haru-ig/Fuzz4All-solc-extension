pragma solidity ^0.8.0;
contract CallerExample20 {
    mapping (bytes32 => uint) public map;
    uint public some_uint;
    function fallback() payable public {
        bytes32 key = keccak256(abi.encodePacked(some_uint));
        uint value = uint(msg.value);
        map[key] = value;
        map_data(key) = value;
    }
}
