pragma solidity ^0.8.0;
contract C2 {
    enum B {
        G
    }
    uint[] public _b;
    function b() public {
        _b.push(2*16881955);
        _b.push(2*4566583);
        _b.push(uint(12));
        _b.push(uint(20));
        _b.push(B.G);
    }
}
