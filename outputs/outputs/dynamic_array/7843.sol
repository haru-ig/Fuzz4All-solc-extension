pragma solidity ^0.8.0;
contract Test16 {
    uint16[1][1] mem;
    function set_mem(uint16 _new_mem)
        public
    {
        mem[0][0] = _new_mem;
    }
}
