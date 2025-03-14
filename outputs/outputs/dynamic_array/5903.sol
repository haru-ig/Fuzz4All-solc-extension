pragma solidity ^0.8.0;
contract Test1689A {
    uint16[] memory x = [0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7];
    uint32 [10] memory x_mutate;
    function test_get_set() public {
        x[0] = 0x8;
        x_mutate[0] = 8;
        x[1] = 0xa;
        x_mutate[1] = 7;
        x[2] = 0xb;
        x_mutate[2] = 6;
    }
    function test_reset() public {
        x[3] = 0xc;
        x_mutate[3] = 5;
        x[4] = 0xd;
        x_mutate[4] = 4;
        x[5] = 0xe;
        x_mutate[5] = 3;
        x[6] = 0xf;
        x_mutate[6] = 2;
    }
    function test_modify() public {
        x[0] = 0xf;
        x_mutate[0] = 1;
        x[1] = 0xe;
        x_mutate[1] = 0;
        x[3] = 0xd;
        x_mutate[3] = 2;
        x[4] = 0xc;
        x_mutate[4] = 3;
        x[6] = 0xb;
        x_mutate[6] = 4;
    }


}
