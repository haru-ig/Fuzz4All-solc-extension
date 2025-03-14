pragma solidity ^0.8.0;
abstract contract SimpleData {
    uint8 val;
    function get() constant public returns(uint8 v) {
        v = val;
    }
}
contract myContract {
    uint8 val;
    function get() constant public returns(uint8 v) {
        MyComplexData memory mem;
        mem.vvv = new uint[1][];
        v = val;
        mem.vvv = [mem.vvv, v];
        mem.vvv[0][0] = 123;
        mem.vvv = new uint[2][];
        mem.vvv = [mem.vvv, mem.vvv];
        v = val;
        mem.vvv[0][1] = 456;
        mem.vvv[1][0] = 123;
        mem.vvv[1][1] = 456;
        v = val;
        mem.vvv[0][0] = 455;
        v = val;
        mem.vvv[0][1] = 2;
        mem.vvv = new uint[1][2];
        v = val;
        mem.vvv[1][0] = 455;
        v = val;
        mem.vvv[1][1] = 3;
        v = val;
    }



}
