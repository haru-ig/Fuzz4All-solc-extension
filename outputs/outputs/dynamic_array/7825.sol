pragma solidity ^0.8.0;
contract Test15 {
    struct Struct {
        uint8 _field;
    }
    uint8[] mem;
    function set_mem(uint8[] memory new_mem)
        public
    {
        mem = new_mem;
    }
}
