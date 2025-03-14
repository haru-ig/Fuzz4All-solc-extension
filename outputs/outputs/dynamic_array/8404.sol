pragma solidity ^0.8.0;

struct ComplexNumber {
    uint x;
    uint y;
}

function plus(ComplexNumber calldata x, ComplexNumber calldata y) pure public returns (ComplexNumber memory) {
    ComplexNumber memory complex = ComplexNumber(x.x + y.x, x.y + y.y);
    return complex;
}
