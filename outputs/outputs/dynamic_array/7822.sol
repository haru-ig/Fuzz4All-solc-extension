pragma solidity ^0.8.0;
contract Test13 {
    uint8[5] memory _mem;

    function set_mem(uint8 new_mem)
        public
    {
        mem[5] = new_mem;
    }
}
