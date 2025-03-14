pragma solidity ^0.8.0;
contract G8modifier {
    modifier G8modifier(uint32 n) {
        _;
    }
    constructor() public G8modifier(0)  {}
    function modifier2(uint32 n) public view returns (uint[0] memory) {
        _;
    }
}
contract G8 {
    modifier G8modifier(uint32 n) {
        uint p = 2;
        if  (p > n) {
            _;
        } else {
            n = p > n? p : n;
            n = p > n? p : n;
            _;
        }
    }
    modifier G8modifier2(uint32 n) {
        if (n > 0) {
            _;
        } else {
            b;
        }
    }
    function f(uint32 n) public view virtual returns (uint) { return n>0? 1 : 4; }
    constructor() public G8modifier(0)  {}
    function geta(uint32 n) public view virtual returns (uint[4] memory) { return f(n) > 0? new uint[4] : new uint[4](0); }
}
contract G9modifier {
    modifier G9modifier(uint32 n) {
        _
