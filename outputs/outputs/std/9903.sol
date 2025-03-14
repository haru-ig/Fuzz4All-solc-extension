pragma solidity ^0.8.0;
contract S10Mutated10 {
    uint10 a;
    uint10 b;
    uint10 c;
    uint10 d;
    uint10 e;
    uint10 f;
    uint10 g;
    uint10 h;
    uint10 i;
    uint10 j;
    uint10 k;
    uint10 l;
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
    }
    function change1() public {
        b--;
        d--;
        f = f + 1;
        g--;
    }
    function change2() public {
        a--;
        b--;
        c++;
        d++;
        f--;
        g--;
    }
    function change3() public {
        a = a + 1;
        b--;
        c++;
        d++;
        f--;
        g--;
    }
    function change4() public {
        a++;
        b = a + 1;
        g--;
        j++;
        h--;
        i--;
        k--;
        l--;
        n--;
    }
}
