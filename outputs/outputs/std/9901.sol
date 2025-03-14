pragma solidity ^0.8.0;
contract Mutated8 {
    uint8 a;
    uint8 b;
    uint8 c;
    uint8 d;
    uint8 e;
    uint8 f;
    uint8 g;
    uint8 h;
    uint8 i;
    uint8 j;
    uint8 k;
    uint8 l;
    uint8 m;
    uint8 n;
    constructor () {
        a = 100;
        b = 100;
        c = 100;
        d = 100;
        e = 100;
        f = 100;
        g = 100;
        h = 100;
        i = 100;
        j = 100;
        k = 100;
        l = 100;
        m = 100;
        n = 100;
    }
    function change1() public {
        b--;

        a--;

        b--;

        a--;

        a--;
    }
    function change2() public {
        b = 100;
        a = a + 1;
        b--;

        a--;

        b--;

        a--;

        a--;

        b--;

        a--;

        b--;

        a--;

        b--;
    }
    function change3() public {
        a = a + 1;
        b -= 1;
        c++;
        d++;
        f--;
        g--;
    }
    function change4() public {
        a++;
        b = a + 1;
        c -= 1;
        d--;
        f -= 1;
        g--;
    }
    function change5() public {
        a--;
        b--;
        c++;
        d++;
        h--;
