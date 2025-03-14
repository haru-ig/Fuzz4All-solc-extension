pragma solidity ^0.8.0;
contract Test3 {
    mapping(uint => uint[]) private s1;
    mapping(uint => uint) private i1;
    uint[] private i2;
    constructor() {
        uint[4] memory i;
        ++i[3];
        s1[3] = i;
    }
    function _mutate(uint pos) {
        s1[pos][3]++;
    }
}
