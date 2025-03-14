pragma solidity ^0.8.0;
contract Mutation_FunctionCaller3 {
    uint constant private EMPTY_STRING = 0x00000000000000000000000000000000000000;

    function setEmpty(string memory _value) public {
        bytes32 _pointer = bytes32(uint(address(this)));
        bytes32 tmp;
        assembly {
            tmp := mload(_pointer).add(0x20)
            mstore( _pointer, add( tmp, and( add( mload(_pointer), 0x1), 0x1 ) ) )
        }
        _value = '';
    }
}
