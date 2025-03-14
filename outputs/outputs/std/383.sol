pragma solidity ^0.8.0;
contract CreateTest {
    uint[] a;
    constructor() {
        a = [1,2,3];
    }
    function generate1() public {
        a = [3,2,1];
    }
    function create(uint n) public {
        a = new uint[](n);
        for (uint i=0; i<n; i++) {a[i] = uint(uint(0)+i);}
    }
    function getA() public view returns (uint[] memory) {return a;}
    function multiply(uint[] memory b, uint[] memory a) public returns (uint[] memory) {
        uint[] memory result = a;
        for (uint i = 0; i < b.length; i++) {result[i] *= b[i];}
        return result;
        }
}
