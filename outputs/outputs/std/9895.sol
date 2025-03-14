pragma solidity ^0.8.0;
contract S8Mutated8 {
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
    uint8 o;
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
        o = 100;
    }
    function change1() public {
        c--;
        e--;
        k--;
        n--;
    }
    function change2() public {
        c+=1;
        e--;
        k--;
        n--;
    }
    function change3() public {
        c++;
        e--;
        k--;
        n--;
    }
    function change4() public {
        c++;
        c--;
        d--;
        g--;
    }
    function change5() public {
        d--;
        c--;
        e--;
        g--;
    }
    function change6() public {
        d--;
        e--;
        e--;
        g--;
    }
}
