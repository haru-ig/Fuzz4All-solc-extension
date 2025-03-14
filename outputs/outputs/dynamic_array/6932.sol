pragma solidity ^0.8.0;
contract Test2 {
    uint[] a;
    constructor() {
        uint[4] memory i;
        i[0] = 0;
        a[0] = i;
        a[0][0] = 5;
    }
}




pragma solidity ^0.8.0;
contract Test2 {
    mapping(uint => uint[]) s2;
    uint[4] memory i;
    constructor() {
        uint[4] memory j;
        j[0] = 0;
        s2[0] = j;
    }
}
