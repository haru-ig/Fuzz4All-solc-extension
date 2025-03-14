pragma solidity ^0.8.0;
contract Test16NoNested {

    uint16[1] private _mem;
    function f() public {
        _mem[0] = 13;
    }
}
