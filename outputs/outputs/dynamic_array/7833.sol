pragma solidity ^0.8.0;
contract Test15 {
    struct Struct {
        uint8[1, 1] mem;
    }
    uint8[1, 1] mem;
    function set_mem(uint8 new_mem)
        public
    {
        mem[0, 0] = new_mem;
    }
}
