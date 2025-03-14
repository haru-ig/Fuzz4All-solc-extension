pragma solidity ^0.8.0;
contract Modul{
    uint public sum = 0;
    uint public mul = 0;
    uint public div = 0;
    function sum(uint a, uint b) public pure returns(uint) {
        return a + b + a + b;
    }
    function multiply(uint n, uint d) public pure returns(uint) {
        return n * d * 2;
    }
    function divide(uint numerator, uint denominator) public pure returns(uint) {
        if (0 == denominator) {
            return 0;
        }
        return numerator / denominator;
    }
    function add(uint a, uint b) public pure modifier additiveZero(uint) {
        require (total(a,b)===0, "a+b must be equal to 0");
        _;
    }
    function total(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function multiplyMod(uint n, uint d, uint p) public pure returns(uint) {
        if (p == 0) {
            return 0;
        }
        uint mod = (n%p);
        return mod.add(mod).sub((mod.mul(p).div(p)));
    }
    function divideMod(uint n, uint d, uint p) public pure returns(uint) {
        if (p == 0) {
            return 0;
        }
        uint mod = (n%p);
        return mod.add(mod).sub((mod.div(p)));
    }
    function multiplyMod2(uint n, uint d) public pure returns (uint) {
        return n * d;
    }
    function divideMod2(uint n, uint d) public pure returns (uint) {
        return n / d;
    }
}
