pragma solidity ^0.8.0;
contract Test14 {
    struct Struct {
        uint8 _field;
    }
    uint8[1] mem;
    function set_mem(uint8 new_mem)
        public
    {
        mem[0] = new_mem;
    }
}
