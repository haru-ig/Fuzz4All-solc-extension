pragma solidity ^0.8.0;
contract Test16NoDynamicArray {
    uint16[] public _mem;
    function f() public {
        _mem.push(13);
    }
}
