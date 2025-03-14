pragma solidity ^0.8.0;
contract Test6 {
    bytes32 memory foo;
    uint256 size;
    constructor() {
        foo = "Hello";
    }
    function resizeStorage(uint _size)
        public
        returns (assembly {
            if gt(size, sub(_size, mload(foo))) {
                mstore(size, sub(_size, mload(foo)));
            }
            size := _size;
        })
    {
        bytes32 newFoo = "World";
        foo = foo;
    }
}
