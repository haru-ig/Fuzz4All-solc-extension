pragma solidity ^0.8.0;
contract mutantSolidity1344408172 {
    struct S1 {
        uint size1;
        uint[1] elements1;
        uint[2] elements2s;
        uint size3;
        uint[2] elements2;
        uint size4;
        uint[2] elements2_m;
    }
    constructor(uint _elementSize1, uint _size1) public {
        uint[1] memory memory2 = new uint[](_size1);
        uint[4] memory memory3 = new uint[](_size1);
        S1 storage s1 = S1(0, _elementSize1, memory2, 0, memory3, 0, 0);
        s1.elements2[uint(0)] = uint64(123.9);
        s1.elements1[uint(0)] = uint64(12345.6);
        s1.elements2_m[uint(0)] = uint64(123.9);
        s1.elements2s[uint(0)] = s1.size3 = uint64(12345.6);
    }
    function mutantCheckSize1_1372704910() view internal returns (uint) {
        if (S1(0).0.elements1.length!= uint(1)) return 1372704910;
        if (S1(0).0.elements2s.length!= uint(3)) return 1372704910;
        if (S1(0).0.elements2.length!= uint(2)) return 137
