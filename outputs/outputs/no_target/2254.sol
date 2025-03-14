pragma solidity ^0.8.0;
contract mutation6 {
    enum E { A, B, C, D }
    enum X { X, X, X, X }
    enum Y { Y, Y, Y, Y }
    function h(E a, X b, Y c, uint w) public pure {
        if (b == X.X) {
            c = Y.Y;
        } else {
            uint256 r;
            switch (c)  {
            case X.X: r  = uint256(a);
            }
        }
    }
}
