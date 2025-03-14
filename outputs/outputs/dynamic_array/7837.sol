pragma solidity ^0.8.0;
contract Test38 {
    uint16[2][2] mem;
    function check_mem(uint16 new_x, uint16 new_y)
        public
    {
        uint16[1][1] new_mem;

        for (uint16 i = 0; i < new_x; i++) {
          new_mem[i][0] = new_y;
        }

        for (uint16 i = 0; i < new_mem.length; i++) {
          mem[i][0] = mem[i][1];
        }

        for (uint16 i = 0; i < new_mem.length; i++) {
          mem[i][1] = new_mem[i][0];
        }
    }
}

pragma solidity ^0.8.0;
contract Test116 {
    uint16[1] mem;
    uint16[1] mem_calldata;

    function set_mem(uint16 new_mem)
        public
    {
        mem[0] = new_mem;
    }
    function set_mem_calldata(uint16 new_mem)
        public
    {
        mem_calldata[0] = new_mem;
    }

    function check_mem()
        public
    {
        uint16[1][1] mem;
        uint16[1] mem_calldata;

        for (uint16 i = 0; i < mem.length; i++) {
          mem[0][0] = mem_calldata[i][0];
        }

        for (uint16 i = 0; i < mem.length; i++) {
          mem[1][0] = mem[0][0];
        }
    }
}
