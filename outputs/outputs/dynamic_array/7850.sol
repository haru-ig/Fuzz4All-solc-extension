pragma solidity ^0.8.0;
contract Test17NoNested {
    uint32[10] private _mem;
    function f() public {
        _mem[0] = 37;
    }
}
