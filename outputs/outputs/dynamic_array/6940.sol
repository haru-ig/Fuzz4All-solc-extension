pragma solidity ^0.8.0;
contract Test3 {
    mapping(uint => uint[]) s2;
    constructor() {
        uint[4] memory i;
        s2[0] = i;
        i[1]++;
    }
}
