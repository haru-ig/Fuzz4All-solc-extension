pragma solidity ^0.8.0;
contract CallerExample21 {
    mapping (contract Address => uint) internal contractMap;
    uint[] internal contractNames;
    function fallback(bytes32 input_name) public payable{
        uint value = contractMap[keccak256(abi.encodePacked(input_name))];
        contractMap[keccak256(abi.encodePacked(input_name))] = (value + msg.value).uint64();
        contractNames.push(value);
    }
}
