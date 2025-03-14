pragma solidity ^0.8.0;
contract C {
    uint[] memory a;
    uint x = 99999999999999999999;
    uint s;
    uint i;
    uint[] memory b = new uint[](10);
    uint[] memory d;
    uint[] memory e;
    uint[] memory f;
    method f() public pure {
        d[1] = x;
        x++;
    }
    method g() public pure {
        s = x;
        while (s >= 0) {s = s - 1;}
    }
    method h() public pure {
        for (uint j = 0; j < 10; j++) {
            s = x;
            i = 0;
            for (uint k = 9; k >= 0; k--) {
                uint m = (s / 2) >> 0;
                s = s - m * 2;
                i = i + m;
            }
        }
    }
}

pragma solidity ^0.8.0;
contract C {
    uint[] memory b;
    uint[] memory d;
    uint j;
    method test(uint x, uint y) public {
        d[j++] = x;
        d[j++] = y;
    }
}
