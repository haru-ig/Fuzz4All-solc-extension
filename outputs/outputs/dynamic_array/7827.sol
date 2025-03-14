pragma solidity ^0.8.0;
contract Test14 {

    uint8[1] mem;
    function set_mem(uint8 new_mem)
        public
    {
            mem = new_mem.toBytes();
    }
}
