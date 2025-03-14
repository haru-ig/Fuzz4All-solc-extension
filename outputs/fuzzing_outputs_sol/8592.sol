pragma solidity ^0.8.0;
library CallerExample22 {
    function _throwFail() internal{
        throw;
    }
}
contract CallerExample23 {
    uint[] public map_data_data;
    mapping (bytes32 => uint) public map_data;
    function call_fallback(uint someValue) public payable{
        (bool success, ) = payable(msg.sender).call{value: msg.value}("");
        if (success){
            map_data_data.push(uint(someValue));
            map_data[keccak256(abi.encodePacked(map_data_data.length))] = uint(someValue);
        }
        else{
            CallerExample22 memory someThrow = CallerExample22();
            (,someThrow) = address(this).call(abi.encodeWithSelector(CallerExample22.fallback.selector));
            uint i = uint(map_data_data.length);
            map_data_data.push(uint(i));
            map_data[keccak256(abi.encodePacked(map_data_data.length))] = uint(i);
        }
    }
}
