pragma solidity ^0.8.0;
library Mutated {
    function setMax(uint256 storage self,
        uint256 a,
        uint256 b,
        uint256 c,
        uint256 d,
        uint256 e,
        uint256 f,
        uint256 g) {
        uint256 i;


        (i, ) = storage.slot(0);
        (i, ) = storage.slot(1);
        (i, ) = storage.slot(2);
        (i, ) = storage.slot(3);
        (i, ) = storage.slot(4);
        assert(i < 9);

        uint256 max = (uint256(uint(self)) < 9)? 9 : uint256(uint(self));

        uint256 min = (uint256(uint(self)) > 0)? 1 : 0;

        uint256 s;

        if (max == f) {
            s = a;
            if (b > max && b < min) {
                b = max;
            }

            if (c > max && c < min) {
                c = max;
            }
        }
        else {
            s = (uint256(uint(a)) < (uint256(uint(b)) + (uint256(uint(c)) > 0)? 2 : 1))? a : b;
            if (c > max && c < min) {
                c = max;
            }
        }

        uint256 u = (s % c);

        if (s < c) { s += c; } else { s -= c; }

        uint256 r = (s % g);

        if (s < g) { s += g; } else { s -= g; }

        if (u > c) { u = c; } else { u = u % c; }

        s = (s % (g * r * u));

        uint256 x = (uint256(uint(s)) % g);

        if (s < g) { s += g; } else { s -= g; }

        uint256 maxPlusOne;

        if (max < x) { maxPlusOne = g; }
        else { maxPlusOne = max - x; }

        uint256 minPlusOne;

        if (min > x) { minPlusOne = 0; }
        else { minPlusOne = g - x; }

        uint256 y1;

        if (max < x) { y1 = (a + b + c + x + e + f); }
        else { y1 = (a + b + c + 2 * x + e + c + f); }

        if (y1 < x) { y1 = g; }

        uint256 y2;

        if (max <= u && x < c) {
            y2 = (a + b + c + 2 * x + x);
        }
        else {
            y2 = (a + b + c + u);
        }

        if (y2 > x) {
