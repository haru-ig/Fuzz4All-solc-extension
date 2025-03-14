pragma solidity ^0.8.0;

contract ArrayMutations {
    function addNewElement() public {
        memory _memory = memory();
        object storage _object = _memory.getObject();
        object[2] memory _array = _object.getArray();
        _array.push(bytes32(keccak256(abi.encodePacked(uint256(1)))));
    }
}
