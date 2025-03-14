pragma solidity ^0.8.0;
contract Add {
    uint a, b;
    event Add(uint _a, uint _b);
    constructor (uint _a_, uint _b_) {
        a = _a_;
        b = _b_;
    }
    function add() view public returns (uint) {
        return a + b;
    }
    function subtract() view public returns (uint) {
        return a - b;
    }
    function multiply() view public returns (uint) {
        return a * b;
    }
    function divide() view public returns (uint) {
        return a / b;
    }
    function compare() view public returns (<uint,uint>) {
        <uint,uint> c = compare(a, b);
        <uint,uint> d = compare(b, a);
        return c;
    }
    function compare(uint ab, uint ba) view public returns (<uint,uint>) {
        <uint,uint> c = (<uint,uint>) a(ab);
        <uint,uint> d = (<uint,uint>) b(ba);
        return c;
    }
}
