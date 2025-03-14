pragma solidity ^0.8.0;
contract Test18 {
    uint[] public _mem;
    uint public length;
    function f() public {
        unchecked {
            _mem[length++] = 13;
        }
    }
}
