pragma solidity ^0.8.0;
contract Test17NoNested {
    uint16[][2] private _mem;
    function f() public {
        _mem[2][1] = 13;
    }
}
