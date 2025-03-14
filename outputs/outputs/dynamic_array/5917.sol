pragma solidity ^0.8.0;
contract Test33529 {
    uint16[7] x = [ 0x2, 0x3, 0x4, 0x6, 0x8, 0x9, 0xa ];
    uint16[2][] storage y = [ [ 0x33333333, 0x33333333 ], [ 0x33333333, 0x33333333 ] ];
    uint16[2][] storage z = [ [ 0x33333333, 0x33333333 ], [ 0x33333333, 0x33333333 ] ];
    uint16 a = 0x2;
    function set(uint16[5][3] memory x_set) public {
        uint16[5][3] memory y_set;
        y_set[0][0] = 0x33333333;
        z[0][0] = x_set[0][0];
        a = z[0][0];
    }
    function del(uint16[5][3] memory) public {
        a = 0x2;
        x[0] = x_set[0][0];
    }
    function add(uint16[5][2] memory) public {
        uint16[5][3] memory x_add;
        x_add[0][0] = 0x33333333;
        x = x_add[0];
        a = x[0];
        x = [ 2, 3, 4, 6, 8, 9, 0xa];
    }
    function set_add(uint16[5][2] memory, uint16[5][3] memory) public {
        uint16[5][3] memory y_
