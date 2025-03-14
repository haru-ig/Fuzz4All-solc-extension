pragma solidity ^0.8.0;
contract Test {
    struct Struct {
        uint8 _field;
    }
    uint8 _mem;
    constructor()
    {
        set_mem(_mem);
    }
    function set_mem(uint8 new_mem)
    {
        _mem = new_mem;
    }
}
