pragma solidity ^0.8.0;
contract CallerExample22 {
    uint[] storageMap;
    uint[] data;
    function Call() public pure{
        uint i;
        for (i = 0; i < 100; ++i) {
            data.push(uint(i));
            uint val = mapping(bytes32 => uint){keccak256(abi.encodePacked(i))}[](keccak256(abi.encodePacked(i)))[0];
            data.push(val);
            mapping(bytes32 => uint){keccak256(abi.encodePacked(i))}[](keccak256(abi.encodePacked(i)))[1] = i;
            data.push(mapping(bytes32=>uint){keccak256(abi.encodePacked(i))}(keccak256(abi.encodePacked(i)))[2]);
        }
        mapping (bytes32 => uint){keccak256(abi.encodePacked(i))}[](map_data[keccak256(abi.encodePacked(i))])[34] = i;
        data.push(mapping(bytes32=>uint){keccak256(abi.encodePacked(i))}[](map_data[keccak256(abi.encodePacked(i))])[0])[12];
    }
}
