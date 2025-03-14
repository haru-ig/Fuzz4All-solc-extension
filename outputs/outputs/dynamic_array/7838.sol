pragma solidity ^0.8.0;
contract Test17 {
    uint16[1][1] mem;
    function set_mem_2(uint16 new_mem)
        public
    {
        memoryStorageMem[0][0] = new_mem;
    }
}
