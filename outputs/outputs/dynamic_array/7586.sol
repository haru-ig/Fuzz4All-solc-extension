pragma solidity ^0.8.0;
contract Test21 {
    uint[] internal a;
    uint public b;
    uint public c;
    uint public d;
    uint memory[] internal b1;
    event D2(uint d);
    constructor (uint[] memory values) public {
        a = new uint[](values.length+2);
        for (uint i = 0; i < values.length; i++) {
            a[i] = values[i];
        }
        a[values.length] = values[values.length];
        a[values.length+1] = values[values.length+1];

        B = a[a.length];
        C = a[a.length+1];

        D = a[a.length+2];
        B1 = new uint[](a.length);
        for (uint i = 0; i < a.length; i++) {
            B1[i] = a[i];
        }
    }
    function f() public view returns (uint[] memory v1, uint[] memory v2) {
        v1 = a;
        v2 = B1;
    }
    function g() public {
        emit D2(A);
    }
}
contract Test22 {
    uint[] internal a;
    uint[] internal b;
    uint public c;
    uint public d;
    uint memory[] internal c1;
    event D3(uint d);
    constructor (uint[] memory values) public {

        uint[] memory tmp = new uint[](values.length+3);
        for (uint i = 0; i < values.length; i++) {
            tmp[i] = values[i];
        }
        tmp[values.length] = values[values.length];

        uint[] memory tmp2 = new uint[](1);
        tmp2[0] = values[values.length+1];
        a = tmp2;

        b = tmp;
        C = a[1];
        /* 0.8 +
