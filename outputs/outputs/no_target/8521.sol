pragma solidity ^0.8.0;
contract Test0x123 {
    uint internal constant A=0;
    uint internal constant B = 4;
    uint internal constant C = 16;

    uint internal[32] internal u32val;
    mapping(uint => uint) public u32mapval;
    uint [32] internal u32indexval;
    uint private  u32privval;
    constructor(uint[4] memory _v) public {
        for (uint i = 0; i < 32; i++) {
            u32val[i] = 0;
        }
        for (uint i = 0; i < 32; i++) {
            u32mapval[i] = 0;
        }
        for (uint i = 0; i < 32; i++) {
            u32indexval[i] = 0;
        }
        u32privval = 1;
        u32mapval[0] = 1;
    }
    function seta(uint _val) public {
        u32val[A] = 1;
    }
    function setb(uint _val) public {
        u32val[B] = 2;
    }
}
