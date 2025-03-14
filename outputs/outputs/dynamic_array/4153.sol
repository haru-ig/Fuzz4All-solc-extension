pragma solidity ^0.8.0;
contract C {
    struct S {
        uint m_elem0;
        uint m_elem1;
    }

    uint x;
    struct S[2] memory s;
    mapping(uint => uint) m;
    mapping(uint[2] => uint) memory m32;
    function f() public {
        x = 2;
        s.m_elem0 = 0;
        s.m_elem1 = 1;
        for (uint i = 1; i < 2; i++) {
            uint[2] memory a;
            for (uint j = 0; j < 2; j++) {
                a[j] += 1;
                c++;
            }
            m[s[1 - i]] = s[1 - i];
        }
        for (uint j = 1; j < 2; j++) {
            uint[2] memory a;
            for (uint k = 0; k < 2; k++) {
                a[k] += 1;
                c++;
            }
            m32[j + 1][s[j]] = s[j];
        }
    }
}
