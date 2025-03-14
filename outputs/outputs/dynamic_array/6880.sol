pragma solidity ^0.8.0;
library Test {
    uint public flag;
    uint[] public i;
    constructor() {
        flag = 1;
        i = new uint[](2);
        i[0] = 1;
        i[1] = 2;
    }
}
