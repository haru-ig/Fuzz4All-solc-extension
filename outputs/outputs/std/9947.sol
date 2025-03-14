pragma solidity ^0.8.0;
contract Mutations {
    function set(uint _index, uint _value) public {
        memory.array[_index] = _value;
    }
    uint[] memory memory.array;
}
