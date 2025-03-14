pragma solidity ^0.8.0;
contract Test16_Sem {
    uint16[] mem;
    uint16[1][1] mem;
    function set_mem(uint16 new_mem)
        public
    {
        uint16 _new_mem = new_mem;
        mem.push(_new_mem);
        mem.push(_new_mem);
    }
}
