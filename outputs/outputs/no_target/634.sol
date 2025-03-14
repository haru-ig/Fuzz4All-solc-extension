pragma solidity ^0.8.0;
contract A {
    function f(uint n, uint x) public pure {
        uint a, b;
        assembly {
            _a := n
            _b := n
            a := _a - 120
            b := 220 - 120
            b := b / a









            unchecked {
                a := b - a
                a := a % 2
                emit _a(a)
            }
            emit _b(b)
        }

    }
}
