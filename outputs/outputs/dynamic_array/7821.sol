pragma solidity ^0.8.0;
contract Test13 {
    uint8[3] array;
    uint mem;
    constructor() {
        array = [123, 3432, 56];
        mem = 4;



    }

    function set_mem(uint8 new_mem)
        public
    {
        mem = new_mem;



    }
}
