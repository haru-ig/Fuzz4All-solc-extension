pragma solidity ^0.8.0;
contract S8Mutated7 {
    uint8 a;
    uint8 b;
    uint8 c;
    uint8 d;
    uint8 e;
    uint8 f;
    constructor () {
        a = 99;
        b = 100;
        c = 100;
        d = 100;
        e = 100;
        f = 100;
    }
    function change1() public {
        a = a + 1;
        a = a + 1;
        a = a + 1;
        a = a - 3;
        a = a - 3;
        a = a - 3;
    }
    function change2() public {
        b = b - 1;
        a = a * 9;
        a = a * 9;
        a = a * 9;
        a = a / 7;
        b = b / 1;
        c = c * 7;
        c = c * 7;
        c = c / 7 + 1;
        c = c / 7 + 1;
        b = b / 2 * 3;
    }
    function change3() public {
        b = b + 1;
        c = c - 3;
        c = c - 3;
        a = a * 7;
        c = c * 2;
    }
    function change4() public {
        d = d - 1;
        f = f + 3;
        f = f + 3;
        b = b / 2 + 1;
        b = b / 2 + 1;
        f = f * 3;
        a = a * 7;
        a = a * 7;
        c = c * 7;
        e = e * 9;
    }
    function change5() public {
        e = e + 1;
        a = a * 7;
        b = b * 9;
        f = f * 7;
        a = a - 3;
        f = f - 9;
        a = a - 9;
        c = c - 9;
        c = c - 9;
    }
}

pragma solidity ^0.8.0;
contract S8
