pragma solidity ^0.8.0;
contract Test15 {
    uint[] public A;
    uint[] public B;
    uint[] public C;
    constructor() public {
        C = new uint[](10);
        C[0] = 1;
        C[1] = 1;
        uint[] memory oldC = C;
        A = new uint[](10);
        A[0] = 1;
        A[1] = 1;
        B = new uint[](10);
        B[0] = 1;
        B[1] = 1;
        A[0] += 1;
        B[1] += 1;
        B[9] += 1;

        C = oldC;
        A = oldC;
        B = new uint[](10);
        B[0] = 1;
        B[1] = 1;
    }
}
contract Test16 {
    uint[] public A;
    uint[] public B;
    uint[] public C;
    constructor() public {
        C = new uint[](10);
        C[0] = 1;
        C[1] = 1;
        uint[] memory oldC = C;
        A = new uint[](10);
        A[0] = 1;
        A[1] = 1;
        B = new uint[](10);
        B[0] = 1;
        B[1] = 1;
        A[0] += 1;
        B[1] += 1;
        C[C.length - 1] += 1;
    }
}
contract Test17 {
    uint[] public A;
    uint[] public B;
    uint[] public C;
    constructor() public {
        C = new uint[](10
