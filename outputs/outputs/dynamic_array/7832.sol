pragma solidity ^0.8.0;
contract Test15 {
    struct Struct {
        uint8 _field;
    }
    uint[1][1] mem;
    function set_mem(uint1 new_mem)
        public
    {
        mem[0][0] = new_mem;
    }
    function get_mem()
        public
        view
        returns (uint8)
    {
        return mem[0][0];
    }
}
