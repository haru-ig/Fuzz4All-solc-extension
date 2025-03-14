pragma solidity ^0.8.0;
contract Test3 {
    uint[] s3;
    constructor() {
        uint[] memory n = new uint[](4);
        n[3] = 0;
        s3 = s3.concat(n);
    }
}
