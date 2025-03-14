pragma solidity ^0.8.0;
contract Test17 {
    struct mem{
        uint16[1][1] mem;
        uint16[1] mem_2;
        uint16[1][2] mem_3;
        uint16[1][3] mem_4;
        uint16[1][4] mem_5;
        uint16[2][1] mem_6;
        uint16[2][2] mem_7;
        uint16[2][3] mem_8;
        uint16[2][4] mem_9;
    }
    mem a;
    function set_mem(uint16 _new_mem)
        public
    {
        a.mem[0][0] = _new_mem;
        a.mem_2[0][] = 2;
        for(uint8 i = 0; i < 4; i++){
            a.mem_3[0][i][0] = 3;
            for(uint8 j = 0; j < 2; j++){
                a.mem_6[0][i][j] = 4;
            }
        }
        a.mem_4[0][0][0] = 5;
        for(uint8 i = 1; i < 4; i++){
            a.mem_5[0][i] = 6;
        }
        a.mem_7[0][0][0][0][0][0] = 7;
    }
}

pragma solidity ^0.8.0;
contract Test18 {
    struct mem{
        uint16[2] mem;
        uint16[1] mem_2;
        uint16[2] mem_3;
        uint16[1][3] mem_4;
    }
    mem a;
    function set_mem(uint16 _new_mem)
        public
    {
        a.mem[0] = 1;
        a.mem_2[0][0] = 1;
        a.mem_3[0] = 1;
        for(uint8 i = 0; i < 3; i++){
            a.mem_4[0][i] = 1;
        }
        a.mem_3[0][0][0] = _new_mem;
    }
}


pragma solidity ^0.8.0
