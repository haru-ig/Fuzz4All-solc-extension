pragma solidity ^0.8.0;
contract Test16 {
    struct Array1 {
        uint8 _internal;
    }

    uint16[1] mem;
    Array1 array;

    function set_mem(uint16 val)
        public
    {
        array._internal = uint8(val);
        mem[0] = array;
    }
}
