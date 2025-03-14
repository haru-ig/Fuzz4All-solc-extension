pragma solidity ^0.8.0;
contract S7Mutated6 {
    int64 a;
    int64 b;
    int64 c;
    int64 d;
    int64 e;
    int64 f;
    constructor () {
        a = 99;
        b = -100;
        c = -100;
        d = -100;
        e = 100;
        f = 100;
    }
    function change1() public {
        a++;
        b++;
        c++;
    }
    function change2() public {
        a++;
        b--;
        c--;
    }
    function change3() public {
        a--;
        b++;
        c--;
    }
    function change4() public {
        a--;
        b--;
        c++;
    }
    function change5() public {
        d++;
        e--;
        f++;
    }
    function change6() public {
        d++;
        e++;
        f--;
    }
}

pragma solidity ^0.8.0;
contract S8Mutated7 {
    uint8[] a;
    uint8[] b;
    uint8[] c;
    uint8[] d;
    uint8[] e;
    uint8[] f;
    constructor () {
        a = new uint8[](2);
        a[0] = 2;
        a[1] = 255;
        b = new uint8[](2);
        b[0] = 2;
        b[1] = 255;
        c = new uint8[](2);
        c[0] = 2;
        c[1] = 127;
        d = new uint8[](2);
        d[0] = 255;
        d[1] = 255;
        e = new uint8[](2);
        e[0] = 127;
        e[1] = 255;
        f = new uint8[](2);
        f[0] = 127;
        f[1] = 255;
    }
    function change1() public {
        a[0]++;
        b[0]++;
        c[0]++;
    }
    function change2() public {
        a[0]++;
        b[0]--;
        c[
