pragma solidity ^0.8.0;
contract Test2 {
    mapping(uint => uint[]) s2;
    constructor() {
        uint[4] memory i;
        i[0] = 0;
        s2[0] = i;
    }
}
