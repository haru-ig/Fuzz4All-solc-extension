pragma solidity ^0.8.0;
contract Test17 {
    uint16[0][666] memory mem;
    function set_mem(uint16 new_mem)
        public
    {
        mem[0][0] = new_mem;
    }
}

pragma solidity ^0.8.0;
contract Test18 {
    uint16[111] memory mem;
    function set_mem(uint16 new_mem)
        public
    {
        mem[0][0] = new_mem;
    }
}
