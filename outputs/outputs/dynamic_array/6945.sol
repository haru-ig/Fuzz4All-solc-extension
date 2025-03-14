pragma solidity ^0.8.0;
contract Test3 {
    mapping(uint => uint[]) private s2;
    uint[] public i;
    constructor() {
        i.push(1);
        s2[0] = i;
    }
}
