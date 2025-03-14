pragma solidity ^0.8.0;
contract CreateTest2 {
    uint[] a;
    uint[] b;
    constructor() {
        b = [2,2,2];
        require(b.length>0, "0");
        a = new uint[](b.length);
        for (uint i=0; i<b.length; i++) {a[i] = uint(uint(0)+i);b[i] = uint(uint(0)+i);}
    }
    function generate2() public {
        a = [9,11,7];
        b = [5,2,1];
    }
    function create(uint n) public {
        b.length = n;
        for (uint i=0; i<n; i++) {
            uint x = uint(uint(0)+i);
            if (i == 1) {b[i] = b[0];}
            else {b[i] = uint(uint(0)+i);}
        }
    }
    function getA() public view returns (uint[] memory) {return a;}
    function getB() public view returns (uint[] memory) {return b;}
    function multiply(uint[] memory b, uint[] memory c) public returns (uint[] memory) {
        uint[] memory result = a;
        for (uint i = 0; i < b.length; i++) {result[i] *= b[i];}
        for (uint i = 0; i < c.length; i++) {result[i] *= c[i];}
        for (uint i = 0; i < b.length; i++) {result[i] *= b[i];}
        for (uint i = 0; i < a.length; i++) {result[i] *= c[i];}
        return result;
        }
}
