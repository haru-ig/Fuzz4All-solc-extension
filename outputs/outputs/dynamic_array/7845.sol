pragma solidity ^0.8.0;
contract Test17 {
    bytes32[5] mem;
    function set_mem(bytes32 _new_mem)
        public
    {
        mem[0] = _new_mem;
    }
}
