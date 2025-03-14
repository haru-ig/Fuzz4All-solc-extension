pragma solidity ^0.8.0;
contract SemanticsEquivalence16x2 {
    uint[] memory a = [1, 2];
    uint[2, 3][] memory b;
    function bar(uint y, uint z) public {
        assembly {
            a.0 := mload(x0)
            a.1 := mload(add(x0, 0x20))

            b.0.0 := mload(x1)
            b.0.1 := mload(add(x1, 0x20))
            b.1.0 := mload(x3)
            b.1.1 := mload(add(x3, 0x20))
            b.2.0 := mload(x4)
            b.2.1 := mload(add(x4, 0x20))
        }

        uint[] memory c = new uint[](x5);
        assembly {
        c.0 := mload(x6)
        c.1 := mload(add(x5, 0x20))
        c.2 := mload(x8)
        c.3 := mload(add(x8, 0x20))
        c.4 := mload(x9)
        c.5 := mload(add(x9, 0x20))
        }

        a = c;
        b = [c, d];

        (int a_, int b_, int c_, int d_) = tuple;
        x1(a_);
        y = mload(add(add(add(z, 1), 2), 3));
        z = c_[c_ - 1];
    }

    (uint x0, uint x2, uint x5) = tuple;
    uint[4, 5, 6] memory d = [2 + 3 * 19 / 18, 100 - 25 - 12 * (1 % 3), 99, 101 / 18];
    (uint y, uint z) = zyz;
    uint[7, 8] memory e = [0, 3, 5, 3 * 4856 / 256, 5 + 99 * 7 / 5, 90 % 13 - 10 * (1 / 3), 100 - 13 / 18 - 1 % 3, 4 / 9 - 13 * (1 - 2 / 3) +
