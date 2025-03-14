pragma solidity ^0.8.0;
contract Test18Mutated_1{
            uint32[] public p;
        }
contract Test18Mutated_2{
            uint32[] x;
        }
contract Test18Mutated_3{
            uint32[] public x;
        }
contract Test18Mutated_4{
            uint32 x = 42;
        }
contract Test18Mutated_5{
            mapping (uint32 => uint32) public p;
        }
contract Test18Mutated_6{
            uint32[] x;
            constructor() {
                x = [1,2,3];
            }
        }
contract Test18Mutated_7{
            uint32[] public x;
            mapping(uint32 => uint32) public y;
            constructor() {
                x[0] = 1;
                x[1] = 2;
                x[2] = 3;
                x[3] = 4;
            }
        }
contract Test18Mutated_8{
            uint32[] public x;
            uint32[] public y;
            constructor() {
                x[0] = 1;
                x[1] = 2;
                x[2] = 3;
                x[3] = 4;
                x[4] = 5;
                x[5] = 6;
                y[0] = 0;
                y[1] = 2;
                y[2] = 6;
                y[3] = 14;

                for(uint i = 0; i < 4; ++i) {
                    x[10 + i] = 10 + i;
                    y[15 + i] = 15 + i;
                }
            }
        }
contract Test18Mutated_9 {
    uint[] x = [7,8,9];
    uint[] y = [10,11,12];
    uint[] z;

    uint y_n = 15;
    uint z_n = 7;

    function Test() external {
        for (uint32 i = 0; i < 10; ++i) {
            x[6 + i] = i;
        }
        y[y_n] = 20;
        z[z_n] = 30;
    }
}
